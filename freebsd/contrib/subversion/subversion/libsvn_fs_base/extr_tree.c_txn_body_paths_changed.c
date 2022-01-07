
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pool; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct paths_changed_args {int changes; TYPE_1__* root; } ;
struct TYPE_6__ {char* txn; int rev; int is_txn_root; int * fs; } ;


 int SVN_ERR (int ) ;
 int svn_fs_base__rev_get_txn_id (char const**,int *,int ,TYPE_2__*,int ) ;
 int * svn_fs_bdb__changes_fetch (int *,int *,char const*,TYPE_2__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_paths_changed(void *baton,
                       trail_t *trail)
{



  struct paths_changed_args *args = baton;
  const char *txn_id;
  svn_fs_t *fs = args->root->fs;


  if (! args->root->is_txn_root)
    SVN_ERR(svn_fs_base__rev_get_txn_id(&txn_id, fs, args->root->rev,
                                        trail, trail->pool));
  else
    txn_id = args->root->txn;

  return svn_fs_bdb__changes_fetch(&(args->changes), fs, txn_id,
                                   trail, trail->pool);
}
