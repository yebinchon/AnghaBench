
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* get_dated_revision ) (void*,int *,int ,int *) ;} ;


 TYPE_1__ VTBL ;
 int * stub1 (void*,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *compat_get_dated_revision(void *session_baton,
                                              svn_revnum_t *revision,
                                              apr_time_t tm,
                                              apr_pool_t *pool)
{
  return VTBL.get_dated_revision(session_baton, revision, tm, pool);
}
