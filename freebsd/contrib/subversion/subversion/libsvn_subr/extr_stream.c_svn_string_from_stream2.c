
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_stream_close (int *) ;
 int * svn_stringbuf__morph_into_string (int *) ;
 int svn_stringbuf_from_stream (int **,int *,int ,int *) ;

svn_error_t *
svn_string_from_stream2(svn_string_t **result,
                        svn_stream_t *stream,
                        apr_size_t len_hint,
                        apr_pool_t *result_pool)
{
  svn_stringbuf_t *buf;

  SVN_ERR(svn_stringbuf_from_stream(&buf, stream, len_hint, result_pool));
  *result = svn_stringbuf__morph_into_string(buf);

  SVN_ERR(svn_stream_close(stream));

  return SVN_NO_ERROR;
}
