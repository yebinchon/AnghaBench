
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ svn_mutex__t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int APR_THREAD_MUTEX_DEFAULT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 scalar_t__ apr_thread_mutex_create (int *,int ,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;

svn_error_t *
svn_mutex__init(svn_mutex__t **mutex_p,
                svn_boolean_t mutex_required,
                apr_pool_t *result_pool)
{


  *mutex_p = ((void*)0);

  if (mutex_required)
    {
      svn_mutex__t *mutex = apr_pcalloc(result_pool, sizeof(*mutex));
      *mutex_p = mutex;
    }

  return SVN_NO_ERROR;
}
