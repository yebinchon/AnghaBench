
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_9__ {scalar_t__ nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int add_work_items (int ,int const*,int *) ;
 int db_read_pristine_props (int **,TYPE_1__*,char const*,int ,int *,int *) ;
 int svn_prop_diffs (TYPE_2__**,int *,int *,int *) ;
 int svn_wc__db_mark_conflict_internal (TYPE_1__*,char const*,int const*,int *) ;
 int svn_wc__db_op_set_props_internal (TYPE_1__*,char const*,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
set_props_txn(svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_hash_t *props,
              svn_boolean_t clear_recorded_info,
              const svn_skel_t *conflict,
              const svn_skel_t *work_items,
              apr_pool_t *scratch_pool)
{
  apr_hash_t *pristine_props;




  SVN_ERR(db_read_pristine_props(&pristine_props, wcroot, local_relpath, FALSE,
                                 scratch_pool, scratch_pool));
  if (props && pristine_props)
    {
      apr_array_header_t *prop_diffs;

      SVN_ERR(svn_prop_diffs(&prop_diffs, props, pristine_props,
                             scratch_pool));
      if (prop_diffs->nelts == 0)
        props = ((void*)0);
    }

  SVN_ERR(svn_wc__db_op_set_props_internal(wcroot, local_relpath, props,
                                           clear_recorded_info, scratch_pool));


  SVN_ERR(add_work_items(wcroot->sdb, work_items, scratch_pool));
  if (conflict)
    SVN_ERR(svn_wc__db_mark_conflict_internal(wcroot, local_relpath,
                                              conflict, scratch_pool));

  return SVN_NO_ERROR;
}
