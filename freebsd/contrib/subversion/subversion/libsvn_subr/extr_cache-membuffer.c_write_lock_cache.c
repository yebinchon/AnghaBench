
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lock; scalar_t__ allow_blocking_writes; } ;
typedef TYPE_1__ svn_membuffer_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_status_t ;


 scalar_t__ APR_SUCCESS ;
 int FALSE ;
 scalar_t__ SVN_LOCK_IS_BUSY (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_thread_rwlock_trywrlock (scalar_t__) ;
 scalar_t__ apr_thread_rwlock_wrlock (scalar_t__) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;
 int * svn_mutex__lock (scalar_t__) ;

__attribute__((used)) static svn_error_t *
write_lock_cache(svn_membuffer_t *cache, svn_boolean_t *success)
{
  return SVN_NO_ERROR;

}
