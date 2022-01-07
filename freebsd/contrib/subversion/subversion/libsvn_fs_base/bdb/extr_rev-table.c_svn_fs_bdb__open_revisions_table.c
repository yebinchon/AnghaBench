
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_5__ {int (* open ) (int ,char*,int ,int ,int const,int) ;} ;
typedef int DB_ENV ;
typedef TYPE_1__ DB ;


 int BDB_ERR (int ) ;
 int DB_CREATE ;
 int DB_EXCL ;
 int DB_RECNO ;
 int SVN_BDB_OPEN_PARAMS (TYPE_1__*,int *) ;
 int db_create (TYPE_1__**,int *,int ) ;
 int stub1 (int ,char*,int ,int ,int const,int) ;
 int svn_fs_bdb__check_version () ;

int svn_fs_bdb__open_revisions_table(DB **revisions_p,
                                     DB_ENV *env,
                                     svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *revisions;

  BDB_ERR(svn_fs_bdb__check_version());
  BDB_ERR(db_create(&revisions, env, 0));
  BDB_ERR((revisions->open)(SVN_BDB_OPEN_PARAMS(revisions, ((void*)0)),
                            "revisions", 0, DB_RECNO,
                            open_flags, 0666));

  *revisions_p = revisions;
  return 0;
}
