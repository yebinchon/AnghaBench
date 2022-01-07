
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int get_dag (int **,int *,char const*,int *) ;
 int * svn_fs_fs__dag_file_checksum (int **,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
fs_file_checksum(svn_checksum_t **checksum,
                 svn_checksum_kind_t kind,
                 svn_fs_root_t *root,
                 const char *path,
                 apr_pool_t *pool)
{
  dag_node_t *file;

  SVN_ERR(get_dag(&file, root, path, pool));
  return svn_fs_fs__dag_file_checksum(checksum, file, kind, pool);
}
