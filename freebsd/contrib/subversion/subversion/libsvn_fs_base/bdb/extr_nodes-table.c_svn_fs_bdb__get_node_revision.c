
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_15__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
struct TYPE_16__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_17__ {TYPE_12__* nodes; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_18__ {int size; int data; } ;
struct TYPE_14__ {int (* get ) (TYPE_12__*,int ,int ,int ,int ) ;} ;
typedef TYPE_4__ DBT ;


 int BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_12__*,int ,int ,int ,int ) ;
 int * svn_fs_base__err_dangling_id (TYPE_2__*,int const*) ;
 int svn_fs_base__id_to_dbt (TYPE_4__*,int const*,int *) ;
 int svn_fs_base__parse_node_revision_skel (int **,int *,int *) ;
 int svn_fs_base__result_dbt (TYPE_4__*) ;
 int svn_fs_base__track_dbt (TYPE_4__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int * svn_skel__parse (int ,int ,int *) ;

svn_error_t *
svn_fs_bdb__get_node_revision(node_revision_t **noderev_p,
                              svn_fs_t *fs,
                              const svn_fs_id_t *id,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  node_revision_t *noderev;
  svn_skel_t *skel;
  int db_err;
  DBT key, value;

  svn_fs_base__trail_debug(trail, "nodes", "get");
  db_err = bfd->nodes->get(bfd->nodes, trail->db_txn,
                           svn_fs_base__id_to_dbt(&key, id, pool),
                           svn_fs_base__result_dbt(&value),
                           0);
  svn_fs_base__track_dbt(&value, pool);


  if (db_err == DB_NOTFOUND)
    return svn_fs_base__err_dangling_id(fs, id);


  SVN_ERR(BDB_WRAP(fs, N_("reading node revision"), db_err));



  if (! noderev_p)
    return SVN_NO_ERROR;


  skel = svn_skel__parse(value.data, value.size, pool);


  SVN_ERR(svn_fs_base__parse_node_revision_skel(&noderev, skel, pool));
  *noderev_p = noderev;
  return SVN_NO_ERROR;
}
