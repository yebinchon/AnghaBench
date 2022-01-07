
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_10__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_11__ {TYPE_7__* nodes; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int (* del ) (TYPE_7__*,int ,int ,int ) ;} ;
typedef int DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int ) ;
 int N_ (char*) ;
 int stub1 (TYPE_7__*,int ,int ,int ) ;
 int svn_fs_base__id_to_dbt (int *,int const*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *
svn_fs_bdb__delete_nodes_entry(svn_fs_t *fs,
                               const svn_fs_id_t *id,
                               trail_t *trail,
                               apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key;

  svn_fs_base__trail_debug(trail, "nodes", "del");
  return BDB_WRAP(fs, N_("deleting entry from 'nodes' table"),
                  bfd->nodes->del(bfd->nodes,
                                  trail->db_txn,
                                  svn_fs_base__id_to_dbt(&key, id, pool),
                                  0));
}
