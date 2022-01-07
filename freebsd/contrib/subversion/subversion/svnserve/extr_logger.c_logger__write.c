
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int stream; int mutex; } ;
typedef TYPE_1__ logger_t ;
typedef int apr_size_t ;


 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int svn_stream_write (int ,char const*,int *) ;

svn_error_t *
logger__write(logger_t *logger,
              const char *errstr,
              apr_size_t len)
{
  SVN_MUTEX__WITH_LOCK(logger->mutex,
                       svn_stream_write(logger->stream, errstr, &len));
  return SVN_NO_ERROR;
}
