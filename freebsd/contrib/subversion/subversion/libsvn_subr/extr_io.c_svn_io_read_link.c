
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int ssize_t ;
typedef int buf ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_EINTR (int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int _ (char*) ;
 int apr_get_os_error () ;
 int cstring_from_utf8 (char const**,char const*,int *) ;
 int * io_win_read_link (TYPE_1__**,char const*,int *) ;
 int readlink (char const*,char*,int) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_wrap_apr (int ,int ) ;
 int * svn_utf_string_to_utf8 (TYPE_1__ const**,TYPE_1__*,int *) ;

svn_error_t *
svn_io_read_link(svn_string_t **dest,
                 const char *path,
                 apr_pool_t *pool)
{
  return svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                          _("Symbolic links are not supported on this "
                            "platform"));

}
