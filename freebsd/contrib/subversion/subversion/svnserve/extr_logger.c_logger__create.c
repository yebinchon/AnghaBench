
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int pool; int stream; int mutex; } ;
typedef TYPE_1__ logger_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_APPEND ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_WRITE ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_mutex__init (int *,int ,int *) ;
 int svn_pool_create (int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
logger__create(logger_t **logger,
               const char *filename,
               apr_pool_t *pool)
{
  logger_t *result = apr_pcalloc(pool, sizeof(*result));
  apr_file_t *file;

  SVN_ERR(svn_io_file_open(&file, filename,
                           APR_WRITE | APR_CREATE | APR_APPEND,
                           APR_OS_DEFAULT, pool));
  SVN_ERR(svn_mutex__init(&result->mutex, TRUE, pool));

  result->stream = svn_stream_from_aprfile2(file, FALSE, pool);
  result->pool = svn_pool_create(pool);

  *logger = result;

  return SVN_NO_ERROR;
}
