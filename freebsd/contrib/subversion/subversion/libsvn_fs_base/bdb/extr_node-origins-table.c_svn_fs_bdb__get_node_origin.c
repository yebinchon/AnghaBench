
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_14__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_15__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_16__ {TYPE_12__* node_origins; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_17__ {int size; int data; } ;
struct TYPE_13__ {int (* get ) (TYPE_12__*,int ,int ,int ,int ) ;} ;
typedef TYPE_4__ DBT ;


 int DB_NOTFOUND ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_12__*,int ,int ,int ,int ) ;
 int * svn_fs_base__err_no_such_node_origin (TYPE_2__*,char const*) ;
 int * svn_fs_base__id_parse (int ,int ,int *) ;
 int svn_fs_base__result_dbt (TYPE_4__*) ;
 int svn_fs_base__str_to_dbt (TYPE_4__*,char const*) ;
 int svn_fs_base__track_dbt (TYPE_4__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *svn_fs_bdb__get_node_origin(const svn_fs_id_t **origin_id,
                                         svn_fs_t *fs,
                                         const char *node_id,
                                         trail_t *trail,
                                         apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;
  int db_err;

  svn_fs_base__trail_debug(trail, "node-origins", "get");
  db_err = bfd->node_origins->get(bfd->node_origins, trail->db_txn,
                                  svn_fs_base__str_to_dbt(&key, node_id),
                                  svn_fs_base__result_dbt(&value), 0);
  svn_fs_base__track_dbt(&value, pool);

  if (db_err == DB_NOTFOUND)
    return svn_fs_base__err_no_such_node_origin(fs, node_id);

  *origin_id = svn_fs_base__id_parse(value.data, value.size, pool);
  return SVN_NO_ERROR;
}
