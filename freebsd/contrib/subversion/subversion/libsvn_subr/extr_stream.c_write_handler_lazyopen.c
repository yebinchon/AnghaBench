
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int real_stream; } ;
typedef TYPE_1__ lazyopen_baton_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int lazyopen_if_unopened (TYPE_1__*) ;
 int svn_stream_write (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
write_handler_lazyopen(void *baton,
                       const char *data,
                       apr_size_t *len)
{
  lazyopen_baton_t *b = baton;

  SVN_ERR(lazyopen_if_unopened(b));
  SVN_ERR(svn_stream_write(b->real_stream, data, len));

  return SVN_NO_ERROR;
}
