
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_READ ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ copy_contents (int *,int *,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ,int ) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_del_none ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_io_open_unique_file3 (int **,char const**,int ,int ,int *,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;

svn_error_t *
svn_io_copy_file(const char *src,
                 const char *dst,
                 svn_boolean_t copy_perms,
                 apr_pool_t *pool)
{
  apr_file_t *from_file, *to_file;
  apr_status_t apr_err;
  const char *dst_tmp;
  svn_error_t *err;
  SVN_ERR(svn_io_file_open(&from_file, src, APR_READ,
                           APR_OS_DEFAULT, pool));




  SVN_ERR(svn_io_open_unique_file3(&to_file, &dst_tmp,
                                   svn_dirent_dirname(dst, pool),
                                   svn_io_file_del_none, pool, pool));

  apr_err = copy_contents(from_file, to_file, pool);

  if (apr_err)
    {
      err = svn_error_wrap_apr(apr_err, _("Can't copy '%s' to '%s'"),
                               svn_dirent_local_style(src, pool),
                               svn_dirent_local_style(dst_tmp, pool));
    }
   else
     err = ((void*)0);

  err = svn_error_compose_create(err,
                                 svn_io_file_close(from_file, pool));

  err = svn_error_compose_create(err,
                                 svn_io_file_close(to_file, pool));

  if (err)
    {
      return svn_error_compose_create(
                                 err,
                                 svn_io_remove_file2(dst_tmp, TRUE, pool));
    }





  if (copy_perms)
    SVN_ERR(svn_io_copy_perms(src, dst_tmp, pool));

  return svn_error_trace(svn_io_file_rename2(dst_tmp, dst, FALSE, pool));
}
