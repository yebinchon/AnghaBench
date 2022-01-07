
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_repos_node_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs_revision_root (int **,int *,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_repos_fs (int *) ;
 int svn_repos_node_editor (int const**,void**,int *,int *,int *,int *,int *) ;
 int * svn_repos_node_from_baton (void*) ;
 int svn_repos_replay2 (int *,char*,int ,int ,int const*,void*,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
generate_delta_tree(svn_repos_node_t **tree,
                    svn_repos_t *repos,
                    svn_fs_root_t *root,
                    svn_revnum_t base_rev,
                    apr_pool_t *pool)
{
  svn_fs_root_t *base_root;
  const svn_delta_editor_t *editor;
  void *edit_baton;
  apr_pool_t *edit_pool = svn_pool_create(pool);
  svn_fs_t *fs = svn_repos_fs(repos);


  SVN_ERR(svn_fs_revision_root(&base_root, fs, base_rev, pool));


  SVN_ERR(svn_repos_node_editor(&editor, &edit_baton, repos,
                                base_root, root, pool, edit_pool));


  SVN_ERR(svn_repos_replay2(root, "", SVN_INVALID_REVNUM, TRUE,
                            editor, edit_baton, ((void*)0), ((void*)0), edit_pool));


  *tree = svn_repos_node_from_baton(edit_baton);
  svn_pool_destroy(edit_pool);
  return SVN_NO_ERROR;
}
