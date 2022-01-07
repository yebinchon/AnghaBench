
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct reporter_3in2_baton {int reporter3_baton; TYPE_1__* reporter3; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* abort_report ) (int ,int *) ;} ;


 int * stub1 (int ,int *) ;

__attribute__((used)) static svn_error_t *
abort_report(void *report_baton,
             apr_pool_t *pool)
{
  struct reporter_3in2_baton *b = report_baton;
  return b->reporter3->abort_report(b->reporter3_baton, pool);
}
