
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ svn_membuffer_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;


 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_thread_rwlock_wrlock (int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;
 int * svn_mutex__lock (int ) ;

__attribute__((used)) static svn_error_t *
force_write_lock_cache(svn_membuffer_t *cache)
{
  return SVN_NO_ERROR;

}
