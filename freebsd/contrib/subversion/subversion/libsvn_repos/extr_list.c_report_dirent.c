
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* svn_repos_dirent_receiver_t ) (char const*,TYPE_1__*,void*,int *) ;
typedef int svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int kind; int member_0; } ;
typedef TYPE_1__ svn_dirent_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int fill_dirent (TYPE_1__*,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
report_dirent(svn_fs_root_t *root,
              const char *path,
              svn_node_kind_t kind,
              svn_boolean_t path_info_only,
              svn_repos_dirent_receiver_t receiver,
              void *receiver_baton,
              apr_pool_t *scratch_pool)
{
  svn_dirent_t dirent = { 0 };


  dirent.kind = kind;
  if (!path_info_only)
    SVN_ERR(fill_dirent(&dirent, root, path, scratch_pool));


  SVN_ERR(receiver(path, &dirent, receiver_baton, scratch_pool));

  return SVN_NO_ERROR;
}
