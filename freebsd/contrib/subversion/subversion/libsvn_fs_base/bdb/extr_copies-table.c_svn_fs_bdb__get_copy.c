
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_16__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
struct TYPE_17__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int copy_t ;
struct TYPE_18__ {TYPE_13__* copies; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_19__ {int size; int data; } ;
struct TYPE_15__ {int (* get ) (TYPE_13__*,int ,int ,int ,int ) ;} ;
typedef TYPE_4__ DBT ;


 int BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_13__*,int ,int ,int ,int ) ;
 int * svn_fs_base__err_corrupt_copy (TYPE_2__*,char const*) ;
 int * svn_fs_base__err_no_such_copy (TYPE_2__*,char const*) ;
 int svn_fs_base__parse_copy_skel (int **,int *,int *) ;
 int svn_fs_base__result_dbt (TYPE_4__*) ;
 int svn_fs_base__str_to_dbt (TYPE_4__*,char const*) ;
 int svn_fs_base__track_dbt (TYPE_4__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int * svn_skel__parse (int ,int ,int *) ;

svn_error_t *
svn_fs_bdb__get_copy(copy_t **copy_p,
                     svn_fs_t *fs,
                     const char *copy_id,
                     trail_t *trail,
                     apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;
  int db_err;
  svn_skel_t *skel;
  copy_t *copy;



  svn_fs_base__trail_debug(trail, "copies", "get");
  db_err = bfd->copies->get(bfd->copies, trail->db_txn,
                            svn_fs_base__str_to_dbt(&key, copy_id),
                            svn_fs_base__result_dbt(&value),
                            0);
  svn_fs_base__track_dbt(&value, pool);

  if (db_err == DB_NOTFOUND)
    return svn_fs_base__err_no_such_copy(fs, copy_id);
  SVN_ERR(BDB_WRAP(fs, N_("reading copy"), db_err));


  skel = svn_skel__parse(value.data, value.size, pool);
  if (! skel)
    return svn_fs_base__err_corrupt_copy(fs, copy_id);


  SVN_ERR(svn_fs_base__parse_copy_skel(&copy, skel, pool));
  *copy_p = copy;
  return SVN_NO_ERROR;
}
