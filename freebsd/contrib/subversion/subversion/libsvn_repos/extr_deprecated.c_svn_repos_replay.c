
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_INVALID_REVNUM ;
 int * svn_repos_replay2 (int *,char*,int ,int ,int const*,void*,int *,int *,int *) ;

svn_error_t *
svn_repos_replay(svn_fs_root_t *root,
                 const svn_delta_editor_t *editor,
                 void *edit_baton,
                 apr_pool_t *pool)
{
  return svn_repos_replay2(root,
                           "" ,
                           SVN_INVALID_REVNUM,
                           FALSE ,
                           editor, edit_baton,
                           ((void*)0) ,
                           ((void*)0) ,
                           pool);
}
