
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct copying_stream_baton {int target; int source; } ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int svn_stream_read_full (int ,char*,int *) ;
 int * svn_stream_write (int ,char*,int *) ;

__attribute__((used)) static svn_error_t *
read_handler_copy(void *baton, char *buffer, apr_size_t *len)
{
  struct copying_stream_baton *btn = baton;

  SVN_ERR(svn_stream_read_full(btn->source, buffer, len));

  return svn_stream_write(btn->target, buffer, len);
}
