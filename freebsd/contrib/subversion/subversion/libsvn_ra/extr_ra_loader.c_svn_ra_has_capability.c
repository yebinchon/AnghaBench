
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int * (* has_capability ) (TYPE_2__*,int *,char const*,int *) ;} ;


 int * stub1 (TYPE_2__*,int *,char const*,int *) ;

svn_error_t *svn_ra_has_capability(svn_ra_session_t *session,
                                   svn_boolean_t *has,
                                   const char *capability,
                                   apr_pool_t *pool)
{
  return session->vtable->has_capability(session, has, capability, pool);
}
