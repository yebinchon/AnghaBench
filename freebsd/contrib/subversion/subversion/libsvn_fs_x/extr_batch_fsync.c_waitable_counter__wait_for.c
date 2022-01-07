
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int mutex; int cond; } ;
typedef TYPE_1__ waitable_counter_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int svn_mutex__lock (int ) ;
 int svn_mutex__unlock (int ,int *) ;
 int svn_thread_cond__wait (int ,int ) ;

__attribute__((used)) static svn_error_t *
waitable_counter__wait_for(waitable_counter_t *counter,
                           int value)
{
  svn_boolean_t done = FALSE;


  do
    {
      SVN_ERR(svn_mutex__lock(counter->mutex));

      if (counter->value == value)
        done = TRUE;
      else
        SVN_ERR(svn_thread_cond__wait(counter->cond, counter->mutex));

      SVN_ERR(svn_mutex__unlock(counter->mutex, SVN_NO_ERROR));
    }
  while (!done);

  return SVN_NO_ERROR;
}
