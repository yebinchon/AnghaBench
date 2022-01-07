
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct compat_report_baton {int baton; TYPE_1__* reporter; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* set_path ) (int ,char const*,int ,int ,int ,int *,int *) ;} ;


 int * stub1 (int ,char const*,int ,int ,int ,int *,int *) ;
 int svn_depth_infinity ;

__attribute__((used)) static svn_error_t *compat_set_path(void *report_baton,
                                    const char *path,
                                    svn_revnum_t revision,
                                    svn_boolean_t start_empty,
                                    apr_pool_t *pool)
{
  struct compat_report_baton *crb = report_baton;

  return crb->reporter->set_path(crb->baton, path, revision,
                                 svn_depth_infinity, start_empty,
                                 ((void*)0), pool);
}
