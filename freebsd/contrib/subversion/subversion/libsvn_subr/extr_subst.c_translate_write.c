
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_stream_write (int *,void const*,int *) ;

__attribute__((used)) static svn_error_t *
translate_write(svn_stream_t *stream,
                const void *buf,
                apr_size_t len)
{
  SVN_ERR(svn_stream_write(stream, buf, &len));

  return SVN_NO_ERROR;
}
