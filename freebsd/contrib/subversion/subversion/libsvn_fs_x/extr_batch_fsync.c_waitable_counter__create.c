
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int cond; scalar_t__ value; } ;
typedef TYPE_1__ waitable_counter_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_mutex__init (int *,int ,int *) ;
 int svn_thread_cond__create (int *,int *) ;

__attribute__((used)) static svn_error_t *
waitable_counter__create(waitable_counter_t **counter_p,
                         apr_pool_t *result_pool)
{
  waitable_counter_t *counter = apr_pcalloc(result_pool, sizeof(*counter));
  counter->value = 0;

  SVN_ERR(svn_thread_cond__create(&counter->cond, result_pool));
  SVN_ERR(svn_mutex__init(&counter->mutex, TRUE, result_pool));

  *counter_p = counter;

  return SVN_NO_ERROR;
}
