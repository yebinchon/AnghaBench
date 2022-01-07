
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_14__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_15__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int idx ;
struct TYPE_16__ {TYPE_5__* uuids; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_18__ {int (* put ) (TYPE_5__*,int ,TYPE_4__*,TYPE_4__*,int ) ;} ;
struct TYPE_17__ {int* data; int size; } ;
typedef TYPE_4__ DBT ;
typedef TYPE_5__ DB ;


 int * BDB_WRAP (TYPE_2__*,int ,int ) ;
 int N_ (char*) ;
 int* apr_pstrmemdup (int *,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (TYPE_5__*,int ,TYPE_4__*,TYPE_4__*,int ) ;
 int svn_fs_base__clear_dbt (TYPE_4__*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *svn_fs_bdb__set_uuid(svn_fs_t *fs,
                                  int idx,
                                  const char *uuid,
                                  trail_t *trail,
                                  apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DB *uuids = bfd->uuids;
  DBT key;
  DBT value;

  svn_fs_base__clear_dbt(&key);
  key.data = &idx;
  key.size = sizeof(idx);

  svn_fs_base__clear_dbt(&value);
  value.size = (u_int32_t) strlen(uuid);
  value.data = apr_pstrmemdup(pool, uuid, value.size + 1);

  svn_fs_base__trail_debug(trail, "uuids", "put");
  return BDB_WRAP(fs, N_("set repository uuid"),
                  uuids->put(uuids, trail->db_txn, &key, &value, 0));
}
