
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_reader_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_spillbuf__reader_getc (char*,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_number(apr_uint64_t *num, svn_spillbuf_reader_t *reader, apr_pool_t *pool)
{
  char c;

  *num = 0;
  while (1)
    {
      SVN_ERR(svn_spillbuf__reader_getc(&c, reader, pool));
      if (c == ':')
        break;
      *num = *num * 10 + (c - '0');
    }
  return SVN_NO_ERROR;
}
