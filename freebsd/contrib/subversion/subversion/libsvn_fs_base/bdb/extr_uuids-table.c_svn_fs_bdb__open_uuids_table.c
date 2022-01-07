
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int recno ;
typedef int buffer ;
typedef int apr_uuid_t ;
struct TYPE_13__ {int (* set_re_len ) (TYPE_2__*,int ) ;int (* open ) (int ,char*,int ,int ,int const,int) ;int (* close ) (TYPE_2__*,int ) ;int (* put ) (TYPE_2__*,int ,TYPE_1__*,TYPE_1__*,int ) ;} ;
struct TYPE_12__ {int* data; int size; int ulen; int flags; } ;
typedef int DB_ENV ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ DB ;


 int APR_UUID_FORMATTED_LENGTH ;
 int BDB_ERR (int) ;
 int DB_APPEND ;
 int DB_CREATE ;
 int DB_DBT_USERMEM ;
 int DB_EXCL ;
 int DB_RECNO ;
 int ENOENT ;
 int SVN_BDB_OPEN_PARAMS (TYPE_2__*,int *) ;
 scalar_t__ TRUE ;
 int apr_uuid_format (char*,int *) ;
 int apr_uuid_get (int *) ;
 int db_create (TYPE_2__**,int *,int ) ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (int ,char*,int ,int ,int const,int) ;
 int stub3 (TYPE_2__*,int ) ;
 int stub4 (TYPE_2__*,int ,TYPE_1__*,TYPE_1__*,int ) ;
 int svn_fs_base__clear_dbt (TYPE_1__*) ;
 int svn_fs_bdb__check_version () ;

int
svn_fs_bdb__open_uuids_table(DB **uuids_p,
                             DB_ENV *env,
                             svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *uuids;
  int error;

  BDB_ERR(svn_fs_bdb__check_version());
  BDB_ERR(db_create(&uuids, env, 0));
  BDB_ERR(uuids->set_re_len(uuids, APR_UUID_FORMATTED_LENGTH));

  error = (uuids->open)(SVN_BDB_OPEN_PARAMS(uuids, ((void*)0)),
                        "uuids", 0, DB_RECNO,
                        open_flags, 0666);



  if (error == ENOENT && (! create))
    {
      BDB_ERR(uuids->close(uuids, 0));
      return svn_fs_bdb__open_uuids_table(uuids_p, env, TRUE);
    }

  BDB_ERR(error);

  if (create)
    {
      char buffer[APR_UUID_FORMATTED_LENGTH + 1];
      DBT key, value;
      apr_uuid_t uuid;
      int recno = 0;

      svn_fs_base__clear_dbt(&key);
      key.data = &recno;
      key.size = sizeof(recno);
      key.ulen = key.size;
      key.flags |= DB_DBT_USERMEM;

      svn_fs_base__clear_dbt(&value);
      value.data = buffer;
      value.size = sizeof(buffer) - 1;

      apr_uuid_get(&uuid);
      apr_uuid_format(buffer, &uuid);

      BDB_ERR(uuids->put(uuids, 0, &key, &value, DB_APPEND));
    }

  *uuids_p = uuids;
  return 0;
}
