
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_reader_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int read_number (scalar_t__*,int *,int *) ;
 int svn_spillbuf__reader_getc (char*,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_rev(svn_revnum_t *rev, svn_spillbuf_reader_t *reader, apr_pool_t *pool)
{
  char c;
  apr_uint64_t num;

  SVN_ERR(svn_spillbuf__reader_getc(&c, reader, pool));
  if (c == '+')
    {
      SVN_ERR(read_number(&num, reader, pool));
      *rev = (svn_revnum_t) num;
    }
  else
    *rev = SVN_INVALID_REVNUM;
  return SVN_NO_ERROR;
}
