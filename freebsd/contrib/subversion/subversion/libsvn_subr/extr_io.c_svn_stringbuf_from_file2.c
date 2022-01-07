
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_READ ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int _ (char*) ;
 int apr_file_open_stdin (int **,int *) ;
 int stringbuf_from_aprfile (int **,char const*,int *,int ,int *) ;
 int * svn_error_wrap_apr (int ,int ) ;
 int * svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;

svn_error_t *
svn_stringbuf_from_file2(svn_stringbuf_t **result,
                         const char *filename,
                         apr_pool_t *pool)
{
  apr_file_t *f;

  if (filename[0] == '-' && filename[1] == '\0')
    {
      apr_status_t apr_err;
      if ((apr_err = apr_file_open_stdin(&f, pool)))
        return svn_error_wrap_apr(apr_err, _("Can't open stdin"));
      SVN_ERR(stringbuf_from_aprfile(result, ((void*)0), f, FALSE, pool));
    }
  else
    {
      SVN_ERR(svn_io_file_open(&f, filename, APR_READ, APR_OS_DEFAULT, pool));
      SVN_ERR(stringbuf_from_aprfile(result, filename, f, TRUE, pool));
    }
  return svn_io_file_close(f, pool);
}
