
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_6__ {int (* open ) (int ,char*,int ,int ,int const,int) ;int (* close ) (TYPE_1__*,int ) ;} ;
typedef int DB_ENV ;
typedef TYPE_1__ DB ;


 int BDB_ERR (int) ;
 int DB_BTREE ;
 int DB_CREATE ;
 int DB_EXCL ;
 int ENOENT ;
 int SVN_BDB_OPEN_PARAMS (TYPE_1__*,int *) ;
 scalar_t__ TRUE ;
 int db_create (TYPE_1__**,int *,int ) ;
 int stub1 (int ,char*,int ,int ,int const,int) ;
 int stub2 (TYPE_1__*,int ) ;
 int svn_fs_bdb__check_version () ;

int
svn_fs_bdb__open_lock_tokens_table(DB **lock_tokens_p,
                                   DB_ENV *env,
                                   svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *lock_tokens;
  int error;

  BDB_ERR(svn_fs_bdb__check_version());
  BDB_ERR(db_create(&lock_tokens, env, 0));
  error = (lock_tokens->open)(SVN_BDB_OPEN_PARAMS(lock_tokens, ((void*)0)),
                              "lock-tokens", 0, DB_BTREE,
                              open_flags, 0666);



  if (error == ENOENT && (! create))
    {
      BDB_ERR(lock_tokens->close(lock_tokens, 0));
      return svn_fs_bdb__open_lock_tokens_table(lock_tokens_p, env, TRUE);
    }
  BDB_ERR(error);

  *lock_tokens_p = lock_tokens;
  return 0;
}
