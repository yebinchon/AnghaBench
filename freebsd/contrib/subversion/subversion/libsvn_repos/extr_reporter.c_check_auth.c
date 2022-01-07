
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int authz_read_baton; int t_root; int (* authz_read_func ) (int *,int ,char const*,int ,int *) ;} ;
typedef TYPE_1__ report_baton_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 int stub1 (int *,int ,char const*,int ,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
check_auth(report_baton_t *b, svn_boolean_t *allowed, const char *path,
           apr_pool_t *pool)
{
  if (b->authz_read_func)
    return svn_error_trace(b->authz_read_func(allowed, b->t_root, path,
                                              b->authz_read_baton, pool));
  *allowed = TRUE;
  return SVN_NO_ERROR;
}
