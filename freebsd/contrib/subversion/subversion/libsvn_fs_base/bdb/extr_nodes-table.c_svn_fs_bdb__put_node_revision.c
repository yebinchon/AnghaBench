
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
struct TYPE_10__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_11__ {TYPE_7__* nodes; int format; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int (* put ) (TYPE_7__*,int *,int ,int ,int ) ;} ;
typedef int DB_TXN ;
typedef int DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int ) ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int stub1 (TYPE_7__*,int *,int ,int ,int ) ;
 int svn_fs_base__id_to_dbt (int *,int const*,int *) ;
 int svn_fs_base__skel_to_dbt (int *,int *,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int svn_fs_base__unparse_node_revision_skel (int **,int *,int ,int *) ;

svn_error_t *
svn_fs_bdb__put_node_revision(svn_fs_t *fs,
                              const svn_fs_id_t *id,
                              node_revision_t *noderev,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DB_TXN *db_txn = trail->db_txn;
  DBT key, value;
  svn_skel_t *skel;


  SVN_ERR(svn_fs_base__unparse_node_revision_skel(&skel, noderev,
                                                  bfd->format, pool));
  svn_fs_base__trail_debug(trail, "nodes", "put");
  return BDB_WRAP(fs, N_("storing node revision"),
                  bfd->nodes->put(bfd->nodes, db_txn,
                                  svn_fs_base__id_to_dbt(&key, id, pool),
                                  svn_fs_base__skel_to_dbt(&value, skel,
                                                           pool),
                                  0));
}
