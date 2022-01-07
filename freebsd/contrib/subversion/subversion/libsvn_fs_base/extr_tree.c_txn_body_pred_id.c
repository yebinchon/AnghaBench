
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct txn_pred_id_args {int * pred_id; int pool; int id; } ;
struct TYPE_7__ {scalar_t__ predecessor_id; } ;
typedef TYPE_2__ node_revision_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_fs_base__id_copy (scalar_t__,int ) ;
 int svn_fs_bdb__get_node_revision (TYPE_2__**,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_pred_id(void *baton, trail_t *trail)
{
  node_revision_t *nr;
  struct txn_pred_id_args *args = baton;

  SVN_ERR(svn_fs_bdb__get_node_revision(&nr, trail->fs, args->id,
                                        trail, trail->pool));
  if (nr->predecessor_id)
    args->pred_id = svn_fs_base__id_copy(nr->predecessor_id, args->pool);
  else
    args->pred_id = ((void*)0);

  return SVN_NO_ERROR;
}
