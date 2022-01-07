
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int * svn_mergeinfo_t ;
typedef scalar_t__ svn_mergeinfo_inheritance_t ;
struct TYPE_20__ {int rev; } ;
typedef TYPE_2__ svn_fs_root_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_22__ {int node; struct TYPE_22__* parent; } ;
typedef TYPE_4__ parent_path_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ;
 int SVN_INVALID_REVNUM ;
 TYPE_3__* SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int open_path (TYPE_4__**,TYPE_2__*,char const*,int ,int ,int *) ;
 int parent_path_path (TYPE_4__*,int *) ;
 int parent_path_relpath (TYPE_4__*,TYPE_4__*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_fs__append_to_merged_froms (int **,int *,int ,int *) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs_fs__dag_get_proplist (int **,int ,int *) ;
 int svn_fs_fs__dag_has_mergeinfo (scalar_t__*,int ) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 scalar_t__ svn_mergeinfo_explicit ;
 int svn_mergeinfo_inheritable2 (int **,int *,int *,int ,int ,scalar_t__,int *,int *) ;
 scalar_t__ svn_mergeinfo_nearest_ancestor ;
 TYPE_3__* svn_mergeinfo_parse (int **,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_mergeinfo_for_path_internal(svn_mergeinfo_t *mergeinfo,
                                svn_fs_root_t *rev_root,
                                const char *path,
                                svn_mergeinfo_inheritance_t inherit,
                                svn_boolean_t adjust_inherited_mergeinfo,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  parent_path_t *parent_path, *nearest_ancestor;
  apr_hash_t *proplist;
  svn_string_t *mergeinfo_string;

  path = svn_fs__canonicalize_abspath(path, scratch_pool);

  SVN_ERR(open_path(&parent_path, rev_root, path, 0, FALSE, scratch_pool));

  if (inherit == svn_mergeinfo_nearest_ancestor && ! parent_path->parent)
    return SVN_NO_ERROR;

  if (inherit == svn_mergeinfo_nearest_ancestor)
    nearest_ancestor = parent_path->parent;
  else
    nearest_ancestor = parent_path;

  while (TRUE)
    {
      svn_boolean_t has_mergeinfo;

      SVN_ERR(svn_fs_fs__dag_has_mergeinfo(&has_mergeinfo,
                                           nearest_ancestor->node));
      if (has_mergeinfo)
        break;


      if (inherit == svn_mergeinfo_explicit)
        {
          return SVN_NO_ERROR;
        }

      nearest_ancestor = nearest_ancestor->parent;


      if (!nearest_ancestor)
        {
          return SVN_NO_ERROR;
        }
    }

  SVN_ERR(svn_fs_fs__dag_get_proplist(&proplist, nearest_ancestor->node,
                                      scratch_pool));
  mergeinfo_string = svn_hash_gets(proplist, SVN_PROP_MERGEINFO);
  if (!mergeinfo_string)
    return svn_error_createf
      (SVN_ERR_FS_CORRUPT, ((void*)0),
       _("Node-revision '%s@%ld' claims to have mergeinfo but doesn't"),
       parent_path_path(nearest_ancestor, scratch_pool), rev_root->rev);


  {



    svn_error_t *err = svn_mergeinfo_parse(mergeinfo,
                                           mergeinfo_string->data,
                                           result_pool);
    if (err)
      {
        if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
          {
            svn_error_clear(err);
            err = ((void*)0);
            *mergeinfo = ((void*)0);
          }
        return svn_error_trace(err);
      }
  }





  if (adjust_inherited_mergeinfo && (nearest_ancestor != parent_path))
    {
      svn_mergeinfo_t tmp_mergeinfo;

      SVN_ERR(svn_mergeinfo_inheritable2(&tmp_mergeinfo, *mergeinfo,
                                         ((void*)0), SVN_INVALID_REVNUM,
                                         SVN_INVALID_REVNUM, TRUE,
                                         scratch_pool, scratch_pool));
      SVN_ERR(svn_fs__append_to_merged_froms(mergeinfo, tmp_mergeinfo,
                                             parent_path_relpath(
                                               parent_path, nearest_ancestor,
                                               scratch_pool),
                                             result_pool));
    }

  return SVN_NO_ERROR;
}
