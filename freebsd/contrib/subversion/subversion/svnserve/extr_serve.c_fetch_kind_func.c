
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* get_normalized_repo_rel_path (void*,char const*,int *) ;
 int get_revision_root (int **,void*,int ,int *) ;
 int svn_fs_check_path (int *,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
fetch_kind_func(svn_node_kind_t *kind,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *scratch_pool)
{
  svn_fs_root_t *fs_root;

  path = get_normalized_repo_rel_path(baton, path, scratch_pool);
  SVN_ERR(get_revision_root(&fs_root, baton, base_revision, scratch_pool));

  SVN_ERR(svn_fs_check_path(kind, fs_root, path, scratch_pool));

  return SVN_NO_ERROR;
}
