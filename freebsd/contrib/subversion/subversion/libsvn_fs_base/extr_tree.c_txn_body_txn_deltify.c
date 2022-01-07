
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pool; TYPE_5__* fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct txn_deltify_args {int txn_id; int is_dir; scalar_t__ base_id; scalar_t__ tgt_id; } ;
typedef int dag_node_t ;
struct TYPE_9__ {scalar_t__ format; } ;
typedef TYPE_2__ base_fs_data_t ;
struct TYPE_10__ {TYPE_2__* fsap_data; } ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_BASE__MIN_REP_SHARING_FORMAT ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__dag_deltify (int *,int *,int ,int ,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_node (int **,TYPE_5__*,scalar_t__,TYPE_1__*,int ) ;
 int svn_fs_base__dag_index_checksums (int *,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_txn_deltify(void *baton, trail_t *trail)
{
  struct txn_deltify_args *args = baton;
  dag_node_t *tgt_node, *base_node;
  base_fs_data_t *bfd = trail->fs->fsap_data;

  SVN_ERR(svn_fs_base__dag_get_node(&tgt_node, trail->fs, args->tgt_id,
                                    trail, trail->pool));

  if (args->base_id)
    {
      SVN_ERR(svn_fs_base__dag_get_node(&base_node, trail->fs, args->base_id,
                                        trail, trail->pool));
      SVN_ERR(svn_fs_base__dag_deltify(tgt_node, base_node, args->is_dir,
                                       args->txn_id, trail, trail->pool));
    }



  if (bfd->format >= SVN_FS_BASE__MIN_REP_SHARING_FORMAT)
    SVN_ERR(svn_fs_base__dag_index_checksums(tgt_node, trail, trail->pool));

  return SVN_NO_ERROR;
}
