
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_6__ {int (* put ) (TYPE_1__*,int ,int ,int ,int ) ;int (* open ) (int ,char*,int ,int ,int const,int) ;} ;
typedef int DB_ENV ;
typedef int DBT ;
typedef TYPE_1__ DB ;


 int BDB_ERR (int ) ;
 int DB_BTREE ;
 int DB_CREATE ;
 int DB_EXCL ;
 char* NEXT_KEY_KEY ;
 int SVN_BDB_OPEN_PARAMS (TYPE_1__*,int *) ;
 int db_create (TYPE_1__**,int *,int ) ;
 int stub1 (int ,char*,int ,int ,int const,int) ;
 int stub2 (TYPE_1__*,int ,int ,int ,int ) ;
 int svn_fs_base__str_to_dbt (int *,char*) ;
 int svn_fs_bdb__check_version () ;

int
svn_fs_bdb__open_reps_table(DB **reps_p,
                            DB_ENV *env,
                            svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *reps;

  BDB_ERR(svn_fs_bdb__check_version());
  BDB_ERR(db_create(&reps, env, 0));
  BDB_ERR((reps->open)(SVN_BDB_OPEN_PARAMS(reps, ((void*)0)),
                       "representations", 0, DB_BTREE,
                       open_flags, 0666));


  if (create)
  {
    DBT key, value;

    BDB_ERR(reps->put
            (reps, 0,
             svn_fs_base__str_to_dbt(&key, NEXT_KEY_KEY),
             svn_fs_base__str_to_dbt(&value, "0"), 0));
  }

  *reps_p = reps;
  return 0;
}
