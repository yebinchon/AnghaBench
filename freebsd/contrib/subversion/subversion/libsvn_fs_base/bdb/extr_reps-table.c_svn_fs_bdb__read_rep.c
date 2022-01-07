
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
struct TYPE_15__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int representation_t ;
struct TYPE_16__ {TYPE_11__* representations; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_17__ {int size; int data; } ;
struct TYPE_13__ {int (* get ) (TYPE_11__*,int ,int ,int ,int ) ;} ;
typedef TYPE_4__ DBT ;


 int BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_SUCH_REPRESENTATION ;
 int _ (char*) ;
 int stub1 (TYPE_11__*,int ,int ,int ,int ) ;
 int * svn_error_createf (int ,int ,int ,char const*) ;
 int * svn_fs_base__parse_representation_skel (int **,int *,int *) ;
 int svn_fs_base__result_dbt (TYPE_4__*) ;
 int svn_fs_base__str_to_dbt (TYPE_4__*,char const*) ;
 int svn_fs_base__track_dbt (TYPE_4__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int * svn_skel__parse (int ,int ,int *) ;

svn_error_t *
svn_fs_bdb__read_rep(representation_t **rep_p,
                     svn_fs_t *fs,
                     const char *key,
                     trail_t *trail,
                     apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  svn_skel_t *skel;
  int db_err;
  DBT query, result;

  svn_fs_base__trail_debug(trail, "representations", "get");
  db_err = bfd->representations->get(bfd->representations,
                                     trail->db_txn,
                                     svn_fs_base__str_to_dbt(&query, key),
                                     svn_fs_base__result_dbt(&result), 0);
  svn_fs_base__track_dbt(&result, pool);


  if (db_err == DB_NOTFOUND)
    return svn_error_createf
      (SVN_ERR_FS_NO_SUCH_REPRESENTATION, 0,
       _("No such representation '%s'"), key);


  SVN_ERR(BDB_WRAP(fs, N_("reading representation"), db_err));


  skel = svn_skel__parse(result.data, result.size, pool);


  return svn_fs_base__parse_representation_skel(rep_p, skel, pool);
}
