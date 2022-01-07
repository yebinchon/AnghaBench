
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_7__ {int (* open ) (int ,char*,int ,int ,int const,int) ;int (* close ) (TYPE_1__*,int ) ;int (* put ) (TYPE_1__*,int ,int ,int ,int ) ;} ;
typedef int DB_ENV ;
typedef int DBT ;
typedef TYPE_1__ DB ;


 int BDB_ERR (int) ;
 int DB_BTREE ;
 int DB_CREATE ;
 int DB_EXCL ;
 int ENOENT ;
 int SVN_BDB_OPEN_PARAMS (TYPE_1__*,int *) ;
 char* SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE ;
 scalar_t__ TRUE ;
 int db_create (TYPE_1__**,int *,int ) ;
 int stub1 (int ,char*,int ,int ,int const,int) ;
 int stub2 (TYPE_1__*,int ) ;
 int stub3 (TYPE_1__*,int ,int ,int ,int ) ;
 int svn_fs_base__str_to_dbt (int *,char*) ;
 int svn_fs_bdb__check_version () ;

int
svn_fs_bdb__open_miscellaneous_table(DB **miscellaneous_p,
                                     DB_ENV *env,
                                     svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *miscellaneous;
  int error;

  BDB_ERR(svn_fs_bdb__check_version());
  BDB_ERR(db_create(&miscellaneous, env, 0));
  error = (miscellaneous->open)(SVN_BDB_OPEN_PARAMS(miscellaneous, ((void*)0)),
                                "miscellaneous", 0, DB_BTREE,
                                open_flags, 0666);



  if (error == ENOENT && (! create))
    {
      BDB_ERR(miscellaneous->close(miscellaneous, 0));
      return svn_fs_bdb__open_miscellaneous_table(miscellaneous_p, env, TRUE);
    }
  BDB_ERR(error);



  if (create)
    {
      DBT key, value;

      BDB_ERR(miscellaneous->put
              (miscellaneous, 0,
               svn_fs_base__str_to_dbt
               (&key, SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE),
               svn_fs_base__str_to_dbt(&value, "0"), 0));
    }

  *miscellaneous_p = miscellaneous;
  return 0;
}
