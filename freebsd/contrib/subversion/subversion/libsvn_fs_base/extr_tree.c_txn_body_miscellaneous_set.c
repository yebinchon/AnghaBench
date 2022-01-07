
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct miscellaneous_set_args {int val; int key; } ;


 int * svn_fs_bdb__miscellaneous_set (int ,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_miscellaneous_set(void *baton, trail_t *trail)
{
  struct miscellaneous_set_args *msa = baton;

  return svn_fs_bdb__miscellaneous_set(trail->fs, msa->key, msa->val, trail,
                                       trail->pool);
}
