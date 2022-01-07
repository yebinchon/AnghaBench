
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* get_latest_revnum ) (void*,int *,int *) ;} ;


 TYPE_1__ VTBL ;
 int * stub1 (void*,int *,int *) ;

__attribute__((used)) static svn_error_t *compat_get_latest_revnum(void *session_baton,
                                             svn_revnum_t *latest_revnum,
                                             apr_pool_t *pool)
{
  return VTBL.get_latest_revnum(session_baton, latest_revnum, pool);
}
