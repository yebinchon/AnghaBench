
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ filetype; } ;
typedef TYPE_1__ apr_finfo_t ;


 scalar_t__ APR_DIR ;
 int APR_FINFO_TYPE ;
 scalar_t__ APR_STATUS_IS_EACCES (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_EEXIST (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_EINTR (scalar_t__) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_IO_UNIQUE_NAMES_EXHAUSTED ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_get_os_error () ;
 char* apr_psprintf (int *,char*,char const*,...) ;
 scalar_t__ apr_stat (TYPE_1__*,char const*,int ,int *) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;
 int symlink (char const*,char const*) ;

svn_error_t *
svn_io_create_unique_link(const char **unique_name_p,
                          const char *path,
                          const char *dest,
                          const char *suffix,
                          apr_pool_t *pool)
{
  return svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                          _("Symbolic links are not supported on this "
                            "platform"));

}
