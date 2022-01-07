
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int mutex; int stream; int pool; } ;
typedef TYPE_1__ logger_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_mutex__init (int *,int ,int *) ;
 int svn_pool_create (int *) ;
 int svn_stream_for_stderr (int *,int *) ;

svn_error_t *
logger__create_for_stderr(logger_t **logger,
                          apr_pool_t *pool)
{
  logger_t *result = apr_pcalloc(pool, sizeof(*result));
  result->pool = svn_pool_create(pool);

  SVN_ERR(svn_stream_for_stderr(&result->stream, pool));
  SVN_ERR(svn_mutex__init(&result->mutex, TRUE, pool));

  *logger = result;

  return SVN_NO_ERROR;
}
