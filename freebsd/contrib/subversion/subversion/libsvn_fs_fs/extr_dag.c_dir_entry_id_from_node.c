
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_id_t ;
struct TYPE_3__ {int * id; } ;
typedef TYPE_1__ svn_fs_dirent_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__dag_dir_entry (TYPE_1__**,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
dir_entry_id_from_node(const svn_fs_id_t **id_p,
                       dag_node_t *parent,
                       const char *name,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_fs_dirent_t *dirent;

  SVN_ERR(svn_fs_fs__dag_dir_entry(&dirent, parent, name, result_pool,
                                   scratch_pool));
  *id_p = dirent ? dirent->id : ((void*)0);

  return SVN_NO_ERROR;
}
