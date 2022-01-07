
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc_notify_state_t ;
struct TYPE_4__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int apr_hash_make (int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_prop_diffs (int **,int *,int ,int *) ;
 int svn_wc__db_op_set_props_internal (TYPE_1__*,char const*,int *,int ,int *) ;
 int svn_wc__has_magic_property (int *) ;
 int svn_wc__merge_props (int **,int *,int **,int *,char const*,int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
update_incoming_add_merge_props(svn_wc_notify_state_t *prop_state,
                                svn_skel_t **conflict_skel,
                                const char *local_relpath,
                                apr_hash_t *base_props,
                                apr_hash_t *working_props,
                                svn_wc__db_t *db,
                                svn_wc__db_wcroot_t *wcroot,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  apr_hash_t *new_actual_props;
  apr_array_header_t *propchanges;
  const char *local_abspath = svn_dirent_join(wcroot->abspath,
                                              local_relpath,
                                              scratch_pool);






  SVN_ERR(svn_prop_diffs(&propchanges, working_props,
                         apr_hash_make(scratch_pool), scratch_pool));
  SVN_ERR(svn_wc__merge_props(conflict_skel, prop_state, &new_actual_props,
                              db, local_abspath,
                              apr_hash_make(scratch_pool),
                              base_props, working_props, propchanges,
                              result_pool, scratch_pool));


  if (apr_hash_count(new_actual_props) > 0)
    SVN_ERR(svn_wc__db_op_set_props_internal(wcroot, local_relpath,
                                             new_actual_props,
                                             svn_wc__has_magic_property(
                                                      propchanges),
                                             scratch_pool));

  return SVN_NO_ERROR;
}
