
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int (* svn_repos_authz_func_t ) (scalar_t__*,int *,char const*,void*,int *) ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef scalar_t__ svn_fs_node_relation_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_6__ {int elt_size; int nelts; scalar_t__ elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 TYPE_1__* apr_array_copy (int *,TYPE_1__ const*) ;
 int * apr_hash_make (int *) ;
 int apr_hash_set (int *,scalar_t__*,int,int ) ;
 char* apr_pstrcat (int *,char*,char const*,int ) ;
 int apr_pstrdup (int *,char const*) ;
 int check_ancestry_of_peg_path (scalar_t__*,int *,char const*,scalar_t__,scalar_t__,int *) ;
 int check_readability (int *,char const*,int (*) (scalar_t__*,int *,char const*,void*,int *),void*,int *) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_node_relation (scalar_t__*,int *,char const*,int *,char const*,int *) ;
 scalar_t__ svn_fs_node_unrelated ;
 int svn_fs_revision_root (int **,int *,scalar_t__,int *) ;
 scalar_t__ svn_node_none ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_repos__prev_location (scalar_t__*,char const**,scalar_t__*,int *,scalar_t__,char const*,int *) ;
 int svn_sort__array (TYPE_1__*,int ) ;
 int svn_sort_compare_revisions ;

svn_error_t *
svn_repos_trace_node_locations(svn_fs_t *fs,
                               apr_hash_t **locations,
                               const char *fs_path,
                               svn_revnum_t peg_revision,
                               const apr_array_header_t *location_revisions_orig,
                               svn_repos_authz_func_t authz_read_func,
                               void *authz_read_baton,
                               apr_pool_t *pool)
{
  apr_array_header_t *location_revisions;
  svn_revnum_t *revision_ptr, *revision_ptr_end;
  svn_fs_root_t *root;
  const char *path;
  svn_revnum_t revision;
  svn_boolean_t is_ancestor;
  apr_pool_t *lastpool, *currpool;

  SVN_ERR_ASSERT(location_revisions_orig->elt_size == sizeof(svn_revnum_t));



  if (*fs_path != '/')
    fs_path = apr_pstrcat(pool, "/", fs_path, SVN_VA_NULL);


  if (authz_read_func)
    {
      svn_fs_root_t *peg_root;
      SVN_ERR(svn_fs_revision_root(&peg_root, fs, peg_revision, pool));
      SVN_ERR(check_readability(peg_root, fs_path,
                                authz_read_func, authz_read_baton, pool));
    }

  *locations = apr_hash_make(pool);


  lastpool = svn_pool_create(pool);
  currpool = svn_pool_create(pool);



  location_revisions = apr_array_copy(pool, location_revisions_orig);
  svn_sort__array(location_revisions, svn_sort_compare_revisions);

  revision_ptr = (svn_revnum_t *)location_revisions->elts;
  revision_ptr_end = revision_ptr + location_revisions->nelts;



  is_ancestor = FALSE;
  while (revision_ptr < revision_ptr_end && *revision_ptr > peg_revision)
    {
      svn_pool_clear(currpool);
      SVN_ERR(check_ancestry_of_peg_path(&is_ancestor, fs, fs_path,
                                         peg_revision, *revision_ptr,
                                         currpool));
      if (is_ancestor)
        break;
      ++revision_ptr;
    }

  revision = is_ancestor ? *revision_ptr : peg_revision;
  path = fs_path;
  if (authz_read_func)
    {
      SVN_ERR(svn_fs_revision_root(&root, fs, revision, pool));
      SVN_ERR(check_readability(root, fs_path, authz_read_func,
                                authz_read_baton, pool));
    }

  while (revision_ptr < revision_ptr_end)
    {
      apr_pool_t *tmppool;
      svn_revnum_t appeared_rev, prev_rev;
      const char *prev_path;



      SVN_ERR(svn_repos__prev_location(&appeared_rev, &prev_path, &prev_rev,
                                       fs, revision, path, currpool));
      if (! prev_path)
        break;



      while ((revision_ptr < revision_ptr_end)
             && (*revision_ptr >= appeared_rev))
        {


          apr_hash_set(*locations, revision_ptr, sizeof(*revision_ptr),
                       apr_pstrdup(pool, path));
          revision_ptr++;
        }



      while ((revision_ptr < revision_ptr_end)
             && (*revision_ptr > prev_rev))
        revision_ptr++;


      path = prev_path;
      revision = prev_rev;

      if (authz_read_func)
        {
          svn_boolean_t readable;
          SVN_ERR(svn_fs_revision_root(&root, fs, revision, currpool));
          SVN_ERR(authz_read_func(&readable, root, path,
                                  authz_read_baton, currpool));
          if (!readable)
            {
              svn_pool_destroy(lastpool);
              svn_pool_destroy(currpool);
              return SVN_NO_ERROR;
            }
        }


      svn_pool_clear(lastpool);
      tmppool = lastpool;
      lastpool = currpool;
      currpool = tmppool;
    }






  SVN_ERR(svn_fs_revision_root(&root, fs, revision, lastpool));
  while (revision_ptr < revision_ptr_end)
    {
      svn_node_kind_t kind;
      svn_fs_node_relation_t node_relation;
      svn_fs_root_t *cur_rev_root;

      svn_pool_clear(currpool);
      SVN_ERR(svn_fs_revision_root(&cur_rev_root, fs, *revision_ptr,
                                   currpool));
      SVN_ERR(svn_fs_check_path(&kind, cur_rev_root, path, currpool));
      if (kind == svn_node_none)
        break;
      SVN_ERR(svn_fs_node_relation(&node_relation, root, path,
                                   cur_rev_root, path, currpool));
      if (node_relation == svn_fs_node_unrelated)
        break;


      apr_hash_set(*locations, revision_ptr, sizeof(*revision_ptr),
                   apr_pstrdup(pool, path));
      revision_ptr++;
    }




  svn_pool_destroy(lastpool);
  svn_pool_destroy(currpool);

  return SVN_NO_ERROR;
}
