
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_6__ {int (* open ) (int ,char*,int ,int ,int const,int) ;int (* set_flags ) (TYPE_1__*,int ) ;} ;
typedef int DB_ENV ;
typedef TYPE_1__ DB ;


 int BDB_ERR (int ) ;
 int DB_BTREE ;
 int DB_CREATE ;
 int DB_DUP ;
 int DB_EXCL ;
 int SVN_BDB_OPEN_PARAMS (TYPE_1__*,int *) ;
 int db_create (TYPE_1__**,int *,int ) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (int ,char*,int ,int ,int const,int) ;
 int svn_fs_bdb__check_version () ;

int
svn_fs_bdb__open_changes_table(DB **changes_p,
                               DB_ENV *env,
                               svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *changes;

  BDB_ERR(svn_fs_bdb__check_version());
  BDB_ERR(db_create(&changes, env, 0));



  BDB_ERR(changes->set_flags(changes, DB_DUP));

  BDB_ERR((changes->open)(SVN_BDB_OPEN_PARAMS(changes, ((void*)0)),
                          "changes", 0, DB_BTREE,
                          open_flags, 0666));

  *changes_p = changes;
  return 0;
}
