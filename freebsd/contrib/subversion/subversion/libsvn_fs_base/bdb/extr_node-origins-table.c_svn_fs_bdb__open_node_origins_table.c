
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

int svn_fs_bdb__open_node_origins_table(DB **node_origins_p,
                                        DB_ENV *env,
                                        svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *node_origins;
  int error;

  BDB_ERR(svn_fs_bdb__check_version());
  BDB_ERR(db_create(&node_origins, env, 0));
  error = (node_origins->open)(SVN_BDB_OPEN_PARAMS(node_origins, ((void*)0)),
                               "node-origins", 0, DB_BTREE,
                               open_flags, 0666);


  if (error == ENOENT && (! create))
    {
      BDB_ERR(node_origins->close(node_origins, 0));
      return svn_fs_bdb__open_node_origins_table(node_origins_p, env, TRUE);
    }

  BDB_ERR(error);

  *node_origins_p = node_origins;
  return 0;
}
