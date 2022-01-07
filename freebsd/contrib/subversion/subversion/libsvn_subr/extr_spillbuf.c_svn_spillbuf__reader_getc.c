
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_reader_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_STREAM_UNEXPECTED_EOF ;
 int * SVN_NO_ERROR ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_spillbuf__reader_read (scalar_t__*,int *,char*,int,int *) ;

svn_error_t *
svn_spillbuf__reader_getc(char *c,
                          svn_spillbuf_reader_t *reader,
                          apr_pool_t *scratch_pool)
{
  apr_size_t amt;

  SVN_ERR(svn_spillbuf__reader_read(&amt, reader, c, 1, scratch_pool));
  if (amt == 0)
    return svn_error_create(SVN_ERR_STREAM_UNEXPECTED_EOF, ((void*)0), ((void*)0));

  return SVN_NO_ERROR;
}
