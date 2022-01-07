
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int cond; int value; } ;
typedef TYPE_1__ waitable_counter_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_mutex__lock (int ) ;
 int svn_mutex__unlock (int ,int *) ;
 int svn_thread_cond__broadcast (int ) ;

__attribute__((used)) static svn_error_t *
waitable_counter__increment(waitable_counter_t *counter)
{
  SVN_ERR(svn_mutex__lock(counter->mutex));
  counter->value++;

  SVN_ERR(svn_thread_cond__broadcast(counter->cond));
  SVN_ERR(svn_mutex__unlock(counter->mutex, SVN_NO_ERROR));

  return SVN_NO_ERROR;
}
