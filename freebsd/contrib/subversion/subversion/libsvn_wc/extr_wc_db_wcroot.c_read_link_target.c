
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_NOT_SYMLINK ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* svn_dirent_canonicalize (int ,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_read_link (TYPE_1__**,char const*,int *) ;
 scalar_t__ svn_path_is_backpath_present (char const*) ;

__attribute__((used)) static svn_error_t *
read_link_target(const char **link_target_abspath,
                 const char *local_abspath,
                 apr_pool_t *pool)
{
  svn_string_t *link_target;
  const char *canon_link_target;

  SVN_ERR(svn_io_read_link(&link_target, local_abspath, pool));
  if (link_target->len == 0)
    return svn_error_createf(SVN_ERR_WC_NOT_SYMLINK, ((void*)0),
                             _("The symlink at '%s' points nowhere"),
                             svn_dirent_local_style(local_abspath, pool));

  canon_link_target = svn_dirent_canonicalize(link_target->data, pool);


  if (!svn_dirent_is_absolute(canon_link_target))
    canon_link_target = svn_dirent_join(svn_dirent_dirname(local_abspath,
                                                           pool),
                                        canon_link_target, pool);


  if (svn_path_is_backpath_present(canon_link_target))
    SVN_ERR(svn_dirent_get_absolute(link_target_abspath, canon_link_target,
                                    pool));
  else
    *link_target_abspath = canon_link_target;

  return SVN_NO_ERROR;
}
