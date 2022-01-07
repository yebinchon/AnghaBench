
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_15__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_16__ {int path; TYPE_4__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_17__ {scalar_t__ kind; } ;
typedef TYPE_3__ svn_checksum_t ;
struct TYPE_18__ {TYPE_11__* checksum_reps; } ;
typedef TYPE_4__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {int (* get ) (TYPE_11__*,int ,int *,int ,int ) ;int (* put ) (TYPE_11__*,int ,int *,int *,int ) ;} ;
typedef int DBT ;


 int BDB_WRAP (TYPE_2__*,int ,int ) ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_CHECKSUM_KIND ;
 int SVN_ERR_FS_ALREADY_EXISTS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int stub1 (TYPE_11__*,int ,int *,int ,int ) ;
 int stub2 (TYPE_11__*,int ,int *,int *,int ) ;
 scalar_t__ svn_checksum_sha1 ;
 char* svn_checksum_to_cstring_display (TYPE_3__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ) ;
 int svn_fs_base__checksum_to_dbt (int *,TYPE_3__*) ;
 int svn_fs_base__result_dbt (int *) ;
 int svn_fs_base__str_to_dbt (int *,char const*) ;
 int svn_fs_base__track_dbt (int *,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *svn_fs_bdb__set_checksum_rep(svn_fs_t *fs,
                                          svn_checksum_t *checksum,
                                          const char *rep_key,
                                          trail_t *trail,
                                          apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;
  int db_err;


  if (checksum->kind != svn_checksum_sha1)
    return svn_error_create(SVN_ERR_BAD_CHECKSUM_KIND, ((void*)0),
                            _("Only SHA1 checksums can be used as keys in the "
                              "checksum-reps table.\n"));


  svn_fs_base__checksum_to_dbt(&key, checksum);





  svn_fs_base__trail_debug(trail, "checksum-reps", "get");
  db_err = bfd->checksum_reps->get(bfd->checksum_reps, trail->db_txn,
                                   &key, svn_fs_base__result_dbt(&value), 0);
  svn_fs_base__track_dbt(&value, pool);
  if (db_err != DB_NOTFOUND)
    {
      const char *sum_str = svn_checksum_to_cstring_display(checksum, pool);
      return svn_error_createf
        (SVN_ERR_FS_ALREADY_EXISTS, ((void*)0),
         _("Representation key for checksum '%s' exists in filesystem '%s'."),
         sum_str, fs->path);
    }


  svn_fs_base__str_to_dbt(&value, rep_key);
  svn_fs_base__trail_debug(trail, "checksum-reps", "put");
  SVN_ERR(BDB_WRAP(fs, N_("storing checksum-reps record"),
                   bfd->checksum_reps->put(bfd->checksum_reps, trail->db_txn,
                                           &key, &value, 0)));
  return SVN_NO_ERROR;
}
