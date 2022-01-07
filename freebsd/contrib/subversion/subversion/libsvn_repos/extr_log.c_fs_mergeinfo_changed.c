
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int * svn_mergeinfo_t ;
typedef int svn_mergeinfo_catalog_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_path_change_iterator_t ;
struct TYPE_9__ {char* data; } ;
struct TYPE_11__ {scalar_t__ mergeinfo_mod; int change_kind; char* copyfrom_path; int copyfrom_rev; int copyfrom_known; TYPE_1__ path; scalar_t__ prop_mod; } ;
typedef TYPE_3__ svn_fs_path_change3_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 scalar_t__ TRUE ;
 char* apr_pstrdup (int *,char const*) ;
 int svn_fs__get_mergeinfo_for_path (int **,int *,char const*,int ,scalar_t__,int *,int *) ;
 int svn_fs_copied_from (int *,char const**,int *,char const*,int *) ;
 int svn_fs_node_prop (TYPE_2__**,int *,char const*,int ,int *) ;


 int svn_fs_path_change_get (TYPE_3__**,int *) ;



 int svn_fs_paths_changed3 (int **,int *,int *,int *) ;
 int svn_fs_revision_root (int **,int *,int ,int *) ;
 int svn_hash__make (int *) ;
 int svn_hash_sets (int ,char const*,int *) ;
 int svn_mergeinfo_diff2 (int **,int **,int *,int *,scalar_t__,int *,int *) ;
 int svn_mergeinfo_inherited ;
 int svn_mergeinfo_parse (int **,int ,int *) ;
 int svn_mergeinfo_to_string (TYPE_2__**,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_repos__prev_location (int *,char const**,int *,int *,int ,char const*,int *) ;
 scalar_t__ svn_string_compare (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ svn_tristate_false ;

__attribute__((used)) static svn_error_t *
fs_mergeinfo_changed(svn_mergeinfo_catalog_t *deleted_mergeinfo_catalog,
                     svn_mergeinfo_catalog_t *added_mergeinfo_catalog,
                     svn_fs_t *fs,
                     svn_revnum_t rev,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_fs_root_t *root;
  apr_pool_t *iterpool, *iterator_pool;
  svn_fs_path_change_iterator_t *iterator;
  svn_fs_path_change3_t *change;
  svn_boolean_t any_mergeinfo = FALSE;
  svn_boolean_t any_copy = FALSE;


  *deleted_mergeinfo_catalog = svn_hash__make(result_pool);
  *added_mergeinfo_catalog = svn_hash__make(result_pool);


  if (rev == 0)
    return SVN_NO_ERROR;



  iterator_pool = svn_pool_create(scratch_pool);



  SVN_ERR(svn_fs_revision_root(&root, fs, rev, scratch_pool));
  SVN_ERR(svn_fs_paths_changed3(&iterator, root, iterator_pool,
                                iterator_pool));
  SVN_ERR(svn_fs_path_change_get(&change, iterator));
  while (change && (!any_mergeinfo || !any_copy))
    {


      if (change->mergeinfo_mod != svn_tristate_false && change->prop_mod)
        any_mergeinfo = TRUE;

      if ( (change->change_kind == 132)
          || (change->change_kind == 129))
        any_copy = TRUE;

      SVN_ERR(svn_fs_path_change_get(&change, iterator));
    }


  if (! any_mergeinfo)
    {
      svn_pool_destroy(iterator_pool);
      return SVN_NO_ERROR;
    }


  svn_pool_clear(iterator_pool);
  SVN_ERR(svn_fs_paths_changed3(&iterator, root, iterator_pool,
                                iterator_pool));




  iterpool = svn_pool_create(scratch_pool);
  while (TRUE)
    {
      const char *changed_path;
      const char *base_path = ((void*)0);
      svn_revnum_t base_rev = SVN_INVALID_REVNUM;
      svn_fs_root_t *base_root = ((void*)0);
      svn_string_t *prev_mergeinfo_value = ((void*)0), *mergeinfo_value;


      SVN_ERR(svn_fs_path_change_get(&change, iterator));
      if (!change)
        break;




      if (change->mergeinfo_mod == svn_tristate_false)
        continue;


      if (! change->prop_mod)
        continue;


      changed_path = change->path.data;
      svn_pool_clear(iterpool);

      switch (change->change_kind)
        {
        case 130:
          {
            svn_revnum_t appeared_rev;




            if (any_copy)
              {
                SVN_ERR(svn_repos__prev_location(&appeared_rev, &base_path,
                                                 &base_rev, fs, rev,
                                                 changed_path, iterpool));




                if (! (base_path && SVN_IS_VALID_REVNUM(base_rev)
                      && (appeared_rev == rev)))
                  {
                    base_path = changed_path;
                    base_rev = rev - 1;
                  }
              }
            else
              {
                base_path = changed_path;
                base_rev = rev - 1;
              }
            break;
          }





        case 132:
        case 129:
          {
            if (change->copyfrom_known)
              {
                base_rev = change->copyfrom_rev;
                base_path = change->copyfrom_path;
              }
            else
              {
                SVN_ERR(svn_fs_copied_from(&base_rev, &base_path,
                                          root, changed_path, iterpool));
              }
            break;
          }


        case 131:
        case 128:
        default:
          continue;
        }


      if (base_path && SVN_IS_VALID_REVNUM(base_rev))
        {
          SVN_ERR(svn_fs_revision_root(&base_root, fs, base_rev, iterpool));
          SVN_ERR(svn_fs_node_prop(&prev_mergeinfo_value, base_root, base_path,
                                   SVN_PROP_MERGEINFO, iterpool));
        }


      SVN_ERR(svn_fs_node_prop(&mergeinfo_value, root, changed_path,
                               SVN_PROP_MERGEINFO, iterpool));






      if (! (mergeinfo_value || prev_mergeinfo_value))
        continue;


      if ( mergeinfo_value && prev_mergeinfo_value
          && svn_string_compare(mergeinfo_value, prev_mergeinfo_value))
        continue;





      if (prev_mergeinfo_value && (! mergeinfo_value))
        {
          svn_mergeinfo_t tmp_mergeinfo;

          SVN_ERR(svn_fs__get_mergeinfo_for_path(&tmp_mergeinfo,
                                                 root, changed_path,
                                                 svn_mergeinfo_inherited, TRUE,
                                                 iterpool, iterpool));
          if (tmp_mergeinfo)
            SVN_ERR(svn_mergeinfo_to_string(&mergeinfo_value,
                                            tmp_mergeinfo,
                                            iterpool));
        }
      else if (mergeinfo_value && (! prev_mergeinfo_value)
               && base_path && SVN_IS_VALID_REVNUM(base_rev))
        {
          svn_mergeinfo_t tmp_mergeinfo;

          SVN_ERR(svn_fs__get_mergeinfo_for_path(&tmp_mergeinfo,
                                                 base_root, base_path,
                                                 svn_mergeinfo_inherited, TRUE,
                                                 iterpool, iterpool));
          if (tmp_mergeinfo)
            SVN_ERR(svn_mergeinfo_to_string(&prev_mergeinfo_value,
                                            tmp_mergeinfo,
                                            iterpool));
        }






        {
          svn_mergeinfo_t prev_mergeinfo = ((void*)0), mergeinfo = ((void*)0);
          svn_mergeinfo_t deleted, added;
          const char *hash_path;

          if (mergeinfo_value)
            SVN_ERR(svn_mergeinfo_parse(&mergeinfo,
                                        mergeinfo_value->data, iterpool));
          if (prev_mergeinfo_value)
            SVN_ERR(svn_mergeinfo_parse(&prev_mergeinfo,
                                        prev_mergeinfo_value->data, iterpool));
          SVN_ERR(svn_mergeinfo_diff2(&deleted, &added, prev_mergeinfo,
                                      mergeinfo, FALSE, result_pool,
                                      iterpool));


          hash_path = apr_pstrdup(result_pool, changed_path);
          svn_hash_sets(*deleted_mergeinfo_catalog, hash_path, deleted);
          svn_hash_sets(*added_mergeinfo_catalog, hash_path, added);
        }
    }

  svn_pool_destroy(iterpool);
  svn_pool_destroy(iterator_pool);

  return SVN_NO_ERROR;
}
