
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int FILE ;


 scalar_t__ EOF ;
 int SVN_ERR_IO_PIPE_WRITE_ERROR ;
 int SVN_ERR_IO_WRITE_ERROR ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN__APR_STATUS_IS_EPIPE (scalar_t__) ;
 int _ (char*) ;
 scalar_t__ apr_get_os_error () ;
 scalar_t__ errno ;
 scalar_t__ fflush (int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;

svn_error_t *
svn_cmdline_fflush(FILE *stream)
{

  errno = 0;
  if (fflush(stream) == EOF)
    {
      if (apr_get_os_error())
        {


          if (SVN__APR_STATUS_IS_EPIPE(apr_get_os_error()))
            return svn_error_create(SVN_ERR_IO_PIPE_WRITE_ERROR, ((void*)0), ((void*)0));
          else
            return svn_error_wrap_apr(apr_get_os_error(), _("Write error"));
        }
      else
        return svn_error_create(SVN_ERR_IO_WRITE_ERROR, ((void*)0), ((void*)0));
    }

  return SVN_NO_ERROR;
}
