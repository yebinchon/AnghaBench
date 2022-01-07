
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct compat_report_baton {int baton; TYPE_1__* reporter; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* delete_path ) (int ,char const*,int *) ;} ;


 int * stub1 (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *compat_delete_path(void *report_baton,
                                       const char *path,
                                       apr_pool_t *pool)
{
  struct compat_report_baton *crb = report_baton;

  return crb->reporter->delete_path(crb->baton, path, pool);
}
