
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int protection; } ;
typedef TYPE_1__ apr_finfo_t ;
typedef int apr_fileperms_t ;
typedef int apr_file_t ;


 int APR_FINFO_PROT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_default_file_perms (int*,char const*,int *) ;
 int svn_io_file_info_get (TYPE_1__*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
merge_default_file_perms(apr_file_t *fd,
                         apr_fileperms_t *perms,
                         const char *directory,
                         apr_pool_t *scratch_pool)
{
  apr_finfo_t finfo;
  apr_fileperms_t default_perms;

  SVN_ERR(get_default_file_perms(&default_perms, directory, scratch_pool));
  SVN_ERR(svn_io_file_info_get(&finfo, APR_FINFO_PROT, fd, scratch_pool));


  *perms = default_perms | finfo.protection;
  return SVN_NO_ERROR;
}
