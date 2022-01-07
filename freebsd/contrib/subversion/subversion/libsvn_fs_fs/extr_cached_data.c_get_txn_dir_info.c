
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int filesize; } ;
typedef TYPE_2__ svn_io_dirent2_t ;
typedef int svn_fs_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int id; TYPE_1__* data_rep; } ;
typedef TYPE_3__ node_revision_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int txn_id; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_FILESIZE ;
 int * SVN_NO_ERROR ;
 scalar_t__ svn_fs_fs__id_txn_used (int *) ;
 char* svn_fs_fs__path_txn_node_children (int *,int ,int *) ;
 int svn_io_stat_dirent2 (TYPE_2__ const**,char const*,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_txn_dir_info(svn_filesize_t *filesize,
                 svn_fs_t *fs,
                 node_revision_t *noderev,
                 apr_pool_t *scratch_pool)
{
  if (noderev->data_rep && svn_fs_fs__id_txn_used(&noderev->data_rep->txn_id))
    {
      const svn_io_dirent2_t *dirent;
      const char *filename;

      filename = svn_fs_fs__path_txn_node_children(fs, noderev->id,
                                                   scratch_pool);

      SVN_ERR(svn_io_stat_dirent2(&dirent, filename, FALSE, FALSE,
                                  scratch_pool, scratch_pool));
      *filesize = dirent->filesize;
    }
  else
    {
      *filesize = SVN_INVALID_FILESIZE;
    }

  return SVN_NO_ERROR;
}
