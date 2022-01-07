
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct txn_pred_count_args {int pred_count; int id; } ;
struct TYPE_7__ {int predecessor_count; } ;
typedef TYPE_2__ node_revision_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_bdb__get_node_revision (TYPE_2__**,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_pred_count(void *baton, trail_t *trail)
{
  node_revision_t *noderev;
  struct txn_pred_count_args *args = baton;

  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, trail->fs,
                                        args->id, trail, trail->pool));
  args->pred_count = noderev->predecessor_count;
  return SVN_NO_ERROR;
}
