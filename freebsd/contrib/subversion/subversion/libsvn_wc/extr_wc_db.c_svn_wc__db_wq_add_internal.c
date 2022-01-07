
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int add_work_items (int ,int const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_wc__db_wq_add_internal(svn_wc__db_wcroot_t *wcroot,
                           const svn_skel_t *work_item,
                           apr_pool_t *scratch_pool)
{

  return svn_error_trace(add_work_items(wcroot->sdb, work_item,
                                        scratch_pool));
}
