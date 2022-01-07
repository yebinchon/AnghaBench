
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_14__ {int kind; } ;
typedef TYPE_2__ svn_checksum_t ;
struct TYPE_15__ {TYPE_1__* node_revision; } ;
typedef TYPE_3__ dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int created_path; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_checksum_match (TYPE_2__ const*,TYPE_2__*) ;
 int * svn_checksum_mismatch_err (TYPE_2__ const*,TYPE_2__*,int *,int ,int ) ;
 int svn_fs_x__dag_file_checksum (TYPE_2__**,TYPE_3__*,int ,int *) ;
 int svn_fs_x__update_dag_cache (TYPE_3__*) ;

svn_error_t *
svn_fs_x__dag_finalize_edits(dag_node_t *file,
                             const svn_checksum_t *checksum,
                             apr_pool_t *scratch_pool)
{
  if (checksum)
    {
      svn_checksum_t *file_checksum;

      SVN_ERR(svn_fs_x__dag_file_checksum(&file_checksum, file,
                                          checksum->kind, scratch_pool));
      if (!svn_checksum_match(checksum, file_checksum))
        return svn_checksum_mismatch_err(checksum, file_checksum,
                                         scratch_pool,
                                         _("Checksum mismatch for '%s'"),
                                         file->node_revision->created_path);
    }

  svn_fs_x__update_dag_cache(file);
  return SVN_NO_ERROR;
}
