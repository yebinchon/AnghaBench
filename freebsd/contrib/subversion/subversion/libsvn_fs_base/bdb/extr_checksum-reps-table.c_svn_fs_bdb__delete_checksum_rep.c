
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_14__ {TYPE_4__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_15__ {scalar_t__ kind; } ;
typedef TYPE_3__ svn_checksum_t ;
struct TYPE_16__ {TYPE_10__* checksum_reps; } ;
typedef TYPE_4__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int (* del ) (TYPE_10__*,int ,int *,int ) ;} ;
typedef int DBT ;


 int BDB_WRAP (TYPE_2__*,int ,int ) ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_CHECKSUM_KIND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int stub1 (TYPE_10__*,int ,int *,int ) ;
 scalar_t__ svn_checksum_sha1 ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_base__checksum_to_dbt (int *,TYPE_3__*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *svn_fs_bdb__delete_checksum_rep(svn_fs_t *fs,
                                             svn_checksum_t *checksum,
                                             trail_t *trail,
                                             apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key;


  if (checksum->kind != svn_checksum_sha1)
    return svn_error_create(SVN_ERR_BAD_CHECKSUM_KIND, ((void*)0),
                            _("Only SHA1 checksums can be used as keys in the "
                              "checksum-reps table.\n"));

  svn_fs_base__checksum_to_dbt(&key, checksum);
  svn_fs_base__trail_debug(trail, "checksum-reps", "del");
  SVN_ERR(BDB_WRAP(fs, N_("deleting entry from 'checksum-reps' table"),
                   bfd->checksum_reps->del(bfd->checksum_reps,
                                           trail->db_txn, &key, 0)));
  return SVN_NO_ERROR;
}
