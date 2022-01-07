
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_reader_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int APR_SIZE_MAX ;
 int APR_UINT64_T_FMT ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_REPOS_BAD_REVISION_REPORT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_palloc (int *,scalar_t__) ;
 int apr_psprintf (int *,int ,int ) ;
 int read_number (int*,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,int) ;
 int svn_spillbuf__reader_read (scalar_t__*,int *,char*,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
read_string(const char **str, svn_spillbuf_reader_t *reader, apr_pool_t *pool)
{
  apr_uint64_t len;
  apr_size_t size;
  apr_size_t amt;
  char *buf;

  SVN_ERR(read_number(&len, reader, pool));





  if (len + 1 < len || len + 1 > APR_SIZE_MAX)
    {



      return svn_error_createf(SVN_ERR_REPOS_BAD_REVISION_REPORT, ((void*)0),
                               apr_psprintf(pool,
                                            _("Invalid length (%%%s) when "
                                              "about to read a string"),
                                            APR_UINT64_T_FMT),
                               len);
    }

  size = (apr_size_t)len;
  buf = apr_palloc(pool, size+1);
  if (size > 0)
    {
      SVN_ERR(svn_spillbuf__reader_read(&amt, reader, buf, size, pool));
      SVN_ERR_ASSERT(amt == size);
    }
  buf[len] = 0;
  *str = buf;
  return SVN_NO_ERROR;
}
