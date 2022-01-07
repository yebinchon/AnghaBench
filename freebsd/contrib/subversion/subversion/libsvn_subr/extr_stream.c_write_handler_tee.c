
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct baton_tee {int out2; int out1; } ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_stream_write (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
write_handler_tee(void *baton, const char *data, apr_size_t *len)
{
  struct baton_tee *bt = baton;

  SVN_ERR(svn_stream_write(bt->out1, data, len));
  SVN_ERR(svn_stream_write(bt->out2, data, len));

  return SVN_NO_ERROR;
}
