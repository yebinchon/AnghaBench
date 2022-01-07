
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_11__ {int kind; } ;
typedef TYPE_1__ svn_checksum_t ;
struct TYPE_12__ {int created_path; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_checksum_match (TYPE_1__ const*,TYPE_1__*) ;
 int * svn_checksum_mismatch_err (TYPE_1__ const*,TYPE_1__*,int *,int ,int ) ;
 int svn_fs_fs__dag_file_checksum (TYPE_1__**,TYPE_2__*,int ,int *) ;

svn_error_t *
svn_fs_fs__dag_finalize_edits(dag_node_t *file,
                              const svn_checksum_t *checksum,
                              apr_pool_t *pool)
{
  if (checksum)
    {
      svn_checksum_t *file_checksum;

      SVN_ERR(svn_fs_fs__dag_file_checksum(&file_checksum, file,
                                           checksum->kind, pool));
      if (!svn_checksum_match(checksum, file_checksum))
        return svn_checksum_mismatch_err(checksum, file_checksum, pool,
                                         _("Checksum mismatch for '%s'"),
                                         file->created_path);
    }

  return SVN_NO_ERROR;
}
