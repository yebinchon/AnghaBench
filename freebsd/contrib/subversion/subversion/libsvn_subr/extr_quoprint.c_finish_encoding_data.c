
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct encode_baton {scalar_t__ linelen; int pool; int output; } ;
typedef int apr_size_t ;


 int * SVN_NO_ERROR ;
 int svn_pool_destroy (int ) ;
 int * svn_stream_close (int ) ;
 int * svn_stream_write (int ,char*,int*) ;

__attribute__((used)) static svn_error_t *
finish_encoding_data(void *baton)
{
  struct encode_baton *eb = baton;
  svn_error_t *err = SVN_NO_ERROR;
  apr_size_t len;


  if (eb->linelen > 0)
    {
      len = 2;
      err = svn_stream_write(eb->output, "=\n", &len);
    }


  if (err == SVN_NO_ERROR)
    err = svn_stream_close(eb->output);
  svn_pool_destroy(eb->pool);
  return err;
}
