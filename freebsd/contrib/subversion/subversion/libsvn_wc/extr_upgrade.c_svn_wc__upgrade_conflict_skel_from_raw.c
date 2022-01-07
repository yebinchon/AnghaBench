
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int operation; int * src_right_version; int * src_left_version; int action; int reason; } ;
typedef TYPE_1__ svn_wc_conflict_description2_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_make (int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int * svn_skel__parse (char const*,int ,int *) ;
 int svn_wc__conflict_skel_add_prop_conflict (int *,int *,char const*,char const*,int *,int *,int *,int ,int *,int *) ;
 int svn_wc__conflict_skel_add_text_conflict (int *,int *,char const*,char const*,char const*,char const*,int *,int *) ;
 int svn_wc__conflict_skel_add_tree_conflict (int *,int *,char const*,int ,int ,int *,int *,int *) ;
 int * svn_wc__conflict_skel_create (int *) ;
 int svn_wc__conflict_skel_set_op_merge (int *,int *,int *,int *,int *) ;
 int svn_wc__conflict_skel_set_op_switch (int *,int *,int *,int *,int *) ;
 int svn_wc__conflict_skel_set_op_update (int *,int *,int *,int *,int *) ;
 int svn_wc__db_get_wcroot (char const**,int *,char const*,int *,int *) ;
 int svn_wc__deserialize_conflict (TYPE_1__ const**,int *,int ,int *,int *) ;




svn_error_t *
svn_wc__upgrade_conflict_skel_from_raw(svn_skel_t **conflicts,
                                       svn_wc__db_t *db,
                                       const char *wri_abspath,
                                       const char *local_relpath,
                                       const char *conflict_old,
                                       const char *conflict_wrk,
                                       const char *conflict_new,
                                       const char *prej_file,
                                       const char *tree_conflict_data,
                                       apr_size_t tree_conflict_len,
                                       apr_pool_t *result_pool,
                                       apr_pool_t *scratch_pool)
{
  svn_skel_t *conflict_data = ((void*)0);
  const char *wcroot_abspath;

  SVN_ERR(svn_wc__db_get_wcroot(&wcroot_abspath, db, wri_abspath,
                                scratch_pool, scratch_pool));

  if (conflict_old || conflict_new || conflict_wrk)
    {
      const char *old_abspath = ((void*)0);
      const char *new_abspath = ((void*)0);
      const char *wrk_abspath = ((void*)0);

      conflict_data = svn_wc__conflict_skel_create(result_pool);

      if (conflict_old)
        old_abspath = svn_dirent_join(wcroot_abspath, conflict_old,
                                      scratch_pool);

      if (conflict_new)
        new_abspath = svn_dirent_join(wcroot_abspath, conflict_new,
                                      scratch_pool);

      if (conflict_wrk)
        wrk_abspath = svn_dirent_join(wcroot_abspath, conflict_wrk,
                                      scratch_pool);

      SVN_ERR(svn_wc__conflict_skel_add_text_conflict(conflict_data,
                                                      db, wri_abspath,
                                                      wrk_abspath,
                                                      old_abspath,
                                                      new_abspath,
                                                      scratch_pool,
                                                      scratch_pool));
    }

  if (prej_file)
    {
      const char *prej_abspath;

      if (!conflict_data)
        conflict_data = svn_wc__conflict_skel_create(result_pool);

      prej_abspath = svn_dirent_join(wcroot_abspath, prej_file, scratch_pool);

      SVN_ERR(svn_wc__conflict_skel_add_prop_conflict(conflict_data,
                                                      db, wri_abspath,
                                                      prej_abspath,
                                                      ((void*)0), ((void*)0), ((void*)0),
                                                apr_hash_make(scratch_pool),
                                                      scratch_pool,
                                                      scratch_pool));
    }

  if (tree_conflict_data)
    {
      svn_skel_t *tc_skel;
      const svn_wc_conflict_description2_t *tc;
      const char *local_abspath;

      if (!conflict_data)
        conflict_data = svn_wc__conflict_skel_create(scratch_pool);

      tc_skel = svn_skel__parse(tree_conflict_data, tree_conflict_len,
                                scratch_pool);

      local_abspath = svn_dirent_join(wcroot_abspath, local_relpath,
                                      scratch_pool);

      SVN_ERR(svn_wc__deserialize_conflict(&tc, tc_skel,
                                           svn_dirent_dirname(local_abspath,
                                                              scratch_pool),
                                           scratch_pool, scratch_pool));

      SVN_ERR(svn_wc__conflict_skel_add_tree_conflict(conflict_data,
                                                      db, wri_abspath,
                                                      tc->reason,
                                                      tc->action,
                                                      ((void*)0),
                                                      scratch_pool,
                                                      scratch_pool));

      switch (tc->operation)
        {
          case 128:
          default:
            SVN_ERR(svn_wc__conflict_skel_set_op_update(conflict_data,
                                                       tc->src_left_version,
                                                       tc->src_right_version,
                                                       scratch_pool,
                                                       scratch_pool));
            break;
          case 129:
            SVN_ERR(svn_wc__conflict_skel_set_op_switch(conflict_data,
                                                        tc->src_left_version,
                                                        tc->src_right_version,
                                                        scratch_pool,
                                                        scratch_pool));
            break;
          case 130:
            SVN_ERR(svn_wc__conflict_skel_set_op_merge(conflict_data,
                                                       tc->src_left_version,
                                                       tc->src_right_version,
                                                       scratch_pool,
                                                       scratch_pool));
            break;
        }
    }
  else if (conflict_data)
    {
      SVN_ERR(svn_wc__conflict_skel_set_op_update(conflict_data, ((void*)0), ((void*)0),
                                                  scratch_pool,
                                                  scratch_pool));
    }

  *conflicts = conflict_data;
  return SVN_NO_ERROR;
}
