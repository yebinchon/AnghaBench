
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_history_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int (* prev ) (TYPE_2__**,TYPE_2__*,int ,int *,int *) ;} ;


 int stub1 (TYPE_2__**,TYPE_2__*,int ,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_history_prev2(svn_fs_history_t **prev_history_p,
                     svn_fs_history_t *history, svn_boolean_t cross_copies,
                     apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  return svn_error_trace(history->vtable->prev(prev_history_p, history,
                                               cross_copies, result_pool,
                                               scratch_pool));
}
