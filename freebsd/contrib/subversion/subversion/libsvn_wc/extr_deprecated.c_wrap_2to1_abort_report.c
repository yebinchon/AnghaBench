
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct wrap_2to1_report_baton {int baton; TYPE_1__* reporter; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* abort_report ) (int ,int *) ;} ;


 int * stub1 (int ,int *) ;

__attribute__((used)) static svn_error_t *wrap_2to1_abort_report(void *report_baton,
                                           apr_pool_t *pool)
{
  struct wrap_2to1_report_baton *wrb = report_baton;

  return wrb->reporter->abort_report(wrb->baton, pool);
}
