
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pool; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_error_t ;
struct text_baton_t {int node; int path; TYPE_1__* root; int result_checksum; } ;
struct TYPE_6__ {int txn; int fs; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int * add_change (int ,int ,int ,int ,int ,int ,int ,TYPE_2__*,int ) ;
 int svn_fs_base__dag_finalize_edits (int ,int ,int ,TYPE_2__*,int ) ;
 int svn_fs_base__dag_get_id (int ) ;
 int svn_fs_path_change_modify ;

__attribute__((used)) static svn_error_t *
txn_body_fulltext_finalize_edits(void *baton, trail_t *trail)
{
  struct text_baton_t *tb = baton;
  SVN_ERR(svn_fs_base__dag_finalize_edits(tb->node,
                                          tb->result_checksum,
                                          tb->root->txn,
                                          trail, trail->pool));


  return add_change(tb->root->fs, tb->root->txn, tb->path,
                    svn_fs_base__dag_get_id(tb->node),
                    svn_fs_path_change_modify, TRUE, FALSE, trail,
                    trail->pool);
}
