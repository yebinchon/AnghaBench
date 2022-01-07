
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_8__ {int data; int len; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct change_txn_prop_args {char const* id; TYPE_2__* value; int name; int fs; } ;
struct begin_txn_args {int flags; int base_rev; int * txn_p; } ;


 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int SVN_FS_TXN_CHECK_OOD ;
 int SVN_FS_TXN_CLIENT_DATE ;
 int SVN_FS__PROP_TXN_CHECK_LOCKS ;
 int SVN_FS__PROP_TXN_CHECK_OOD ;
 int SVN_FS__PROP_TXN_CLIENT_DATE ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 int apr_time_now () ;
 int make_txn (int ,char const*,int ,int ) ;
 int strlen (int ) ;
 int svn_fs_base__rev_get_root (int const**,int ,int ,TYPE_1__*,int ) ;
 int svn_fs_bdb__create_txn (char const**,int ,int const*,TYPE_1__*,int ) ;
 void* svn_string_create (char*,int ) ;
 int svn_time_to_cstring (int ,int ) ;
 int txn_body_change_txn_prop (struct change_txn_prop_args*,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
txn_body_begin_txn(void *baton, trail_t *trail)
{
  struct begin_txn_args *args = baton;
  const svn_fs_id_t *root_id;
  const char *txn_id;

  SVN_ERR(svn_fs_base__rev_get_root(&root_id, trail->fs, args->base_rev,
                                    trail, trail->pool));
  SVN_ERR(svn_fs_bdb__create_txn(&txn_id, trail->fs, root_id,
                                 trail, trail->pool));

  if (args->flags & SVN_FS_TXN_CHECK_OOD)
    {
      struct change_txn_prop_args cpargs;
      cpargs.fs = trail->fs;
      cpargs.id = txn_id;
      cpargs.name = SVN_FS__PROP_TXN_CHECK_OOD;
      cpargs.value = svn_string_create("true", trail->pool);

      SVN_ERR(txn_body_change_txn_prop(&cpargs, trail));
    }

  if (args->flags & SVN_FS_TXN_CHECK_LOCKS)
    {
      struct change_txn_prop_args cpargs;
      cpargs.fs = trail->fs;
      cpargs.id = txn_id;
      cpargs.name = SVN_FS__PROP_TXN_CHECK_LOCKS;
      cpargs.value = svn_string_create("true", trail->pool);

      SVN_ERR(txn_body_change_txn_prop(&cpargs, trail));
    }






  {
    struct change_txn_prop_args cpargs;
    svn_string_t date;
    cpargs.fs = trail->fs;
    cpargs.id = txn_id;
    cpargs.name = SVN_PROP_REVISION_DATE;
    date.data = svn_time_to_cstring(apr_time_now(), trail->pool);
    date.len = strlen(date.data);
    cpargs.value = &date;
    SVN_ERR(txn_body_change_txn_prop(&cpargs, trail));
  }

  if (args->flags & SVN_FS_TXN_CLIENT_DATE)
    {
      struct change_txn_prop_args cpargs;
      cpargs.fs = trail->fs;
      cpargs.id = txn_id;
      cpargs.name = SVN_FS__PROP_TXN_CLIENT_DATE;
      cpargs.value = svn_string_create("0", trail->pool);

      SVN_ERR(txn_body_change_txn_prop(&cpargs, trail));
    }

  *args->txn_p = make_txn(trail->fs, txn_id, args->base_rev, trail->pool);
  return SVN_NO_ERROR;
}
