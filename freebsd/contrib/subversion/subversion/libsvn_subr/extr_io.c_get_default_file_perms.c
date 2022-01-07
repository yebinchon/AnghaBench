
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_uintptr_t ;
typedef scalar_t__ apr_uint32_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ protection; } ;
typedef TYPE_1__ apr_finfo_t ;
typedef scalar_t__ apr_fileperms_t ;
typedef int apr_file_t ;


 int APR_FINFO_PROT ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* apr_psprintf (int *,char*,scalar_t__) ;
 scalar_t__ apr_time_now () ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_del_none ;
 int * svn_io_file_info_get (TYPE_1__*,int ,int *,int *) ;
 int * svn_io_open_uniquely_named (int **,char const**,char const*,char const*,int *,int ,int *,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_default_file_perms(apr_fileperms_t *perms,
                       const char *directory,
                       apr_pool_t *scratch_pool)
{

  static apr_fileperms_t default_perms = 0;






  if (default_perms == 0)
    {
      apr_finfo_t finfo;
      apr_file_t *fd;
      const char *fname_base, *fname;
      apr_uint32_t randomish;
      svn_error_t *err;
      randomish = ((apr_uint32_t)(apr_uintptr_t)scratch_pool
                   + (apr_uint32_t)((apr_uintptr_t)scratch_pool / 4096)
                   + (apr_uint32_t)apr_time_now());
      fname_base = apr_psprintf(scratch_pool, "svn-%08x", randomish);

      SVN_ERR(svn_io_open_uniquely_named(&fd, &fname, directory, fname_base,
                                         ((void*)0), svn_io_file_del_none,
                                         scratch_pool, scratch_pool));
      err = svn_io_file_info_get(&finfo, APR_FINFO_PROT, fd, scratch_pool);
      err = svn_error_compose_create(err, svn_io_file_close(fd, scratch_pool));
      err = svn_error_compose_create(err, svn_io_remove_file2(fname, TRUE,
                                                              scratch_pool));
      SVN_ERR(err);
      *perms = finfo.protection;
      default_perms = finfo.protection;
    }
  else
    *perms = default_perms;

  return SVN_NO_ERROR;
}
