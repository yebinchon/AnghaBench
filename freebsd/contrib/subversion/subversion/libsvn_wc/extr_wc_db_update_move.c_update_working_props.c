
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_7__* wcroot; int db; } ;
typedef TYPE_1__ update_move_baton_t ;
typedef int svn_wc_notify_state_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
struct working_node_version_t {int * props; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_11__ {int nelts; } ;
typedef TYPE_2__ apr_array_header_t ;
struct TYPE_12__ {int abspath; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_dirent_join (int ,char const*,int *) ;
 int svn_prop_diffs (TYPE_2__**,int *,int *,int *) ;
 int svn_wc__db_op_set_props_internal (TYPE_7__*,char const*,int *,int ,int *) ;
 int svn_wc__db_read_props_internal (int **,TYPE_7__*,char const*,int *,int *) ;
 int svn_wc__has_magic_property (TYPE_2__*) ;
 int svn_wc__merge_props (int **,int *,int **,int ,int ,int *,int *,int *,TYPE_2__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
update_working_props(svn_wc_notify_state_t *prop_state,
                     svn_skel_t **conflict_skel,
                     apr_array_header_t **propchanges,
                     apr_hash_t **actual_props,
                     update_move_baton_t *b,
                     const char *local_relpath,
                     const struct working_node_version_t *old_version,
                     const struct working_node_version_t *new_version,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  apr_hash_t *new_actual_props;
  apr_array_header_t *new_propchanges;







  SVN_ERR(svn_wc__db_read_props_internal(actual_props,
                                         b->wcroot, local_relpath,
                                         result_pool, scratch_pool));
  SVN_ERR(svn_prop_diffs(propchanges, new_version->props, old_version->props,
                         result_pool));
  SVN_ERR(svn_wc__merge_props(conflict_skel, prop_state,
                              &new_actual_props,
                              b->db, svn_dirent_join(b->wcroot->abspath,
                                                     local_relpath,
                                                     scratch_pool),
                              old_version->props, old_version->props,
                              *actual_props, *propchanges,
                              result_pool, scratch_pool));






  SVN_ERR(svn_prop_diffs(&new_propchanges, new_actual_props, new_version->props,
                         scratch_pool));
  if (!new_propchanges->nelts)
    new_actual_props = ((void*)0);


  SVN_ERR(svn_wc__db_op_set_props_internal(b->wcroot, local_relpath,
                                           new_actual_props,
                                           svn_wc__has_magic_property(
                                                    *propchanges),
                                           scratch_pool));

  return SVN_NO_ERROR;
}
