
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
 int svn_stream_read2 (int ,char*,int *) ;

__attribute__((used)) static svn_error_t *
read_handler_lazyopen(void *baton,
                      char *buffer,
                      apr_size_t *len)
{
  lazyopen_baton_t *b = baton;

  SVN_ERR(lazyopen_if_unopened(b));
  SVN_ERR(svn_stream_read2(b->real_stream, buffer, len));

  return SVN_NO_ERROR;
}
