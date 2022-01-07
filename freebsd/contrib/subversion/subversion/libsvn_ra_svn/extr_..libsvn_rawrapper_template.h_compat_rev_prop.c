
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* rev_prop ) (void*,int ,char const*,int **,int *) ;} ;


 TYPE_1__ VTBL ;
 int * stub1 (void*,int ,char const*,int **,int *) ;

__attribute__((used)) static svn_error_t *compat_rev_prop(void *session_baton,
                                    svn_revnum_t rev,
                                    const char *propname,
                                    svn_string_t **value,
                                    apr_pool_t *pool)
{
  return VTBL.rev_prop(session_baton, rev, propname, value, pool);
}
