
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ svn_mutex__t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;


 int _ (char*) ;
 scalar_t__ apr_thread_mutex_unlock (int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;

svn_error_t *
svn_mutex__unlock(svn_mutex__t *mutex,
                  svn_error_t *err)
{
  if (mutex)
    {





    }

  return err;
}
