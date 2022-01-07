
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int svn_sqlite__stmt_t ;
struct TYPE_15__ {TYPE_4__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_16__ {scalar_t__ kind; int digest; } ;
typedef TYPE_2__ svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_17__ {int revision; void* expanded_size; void* size; void* item_index; int has_sha1; int sha1_digest; int txn_id; } ;
typedef TYPE_3__ representation_t ;
struct TYPE_18__ {int rep_cache_db; int rep_sharing_allowed; } ;
typedef TYPE_4__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int STMT_GET_REP ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_BAD_CHECKSUM_KIND ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 TYPE_3__* apr_pcalloc (int *,int) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ svn_checksum_sha1 ;
 int svn_checksum_to_cstring (TYPE_2__*,int *) ;
 int svn_checksum_to_cstring_display (TYPE_2__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,char*,int ) ;
 int * svn_fs_fs__ensure_revision_exists (int ,TYPE_1__*,int *) ;
 int svn_fs_fs__fixup_expanded_size (TYPE_1__*,TYPE_3__*,int *) ;
 int svn_fs_fs__id_txn_reset (int *) ;
 int svn_fs_fs__open_rep_cache (TYPE_1__*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ) ;
 void* svn_sqlite__column_int64 (int *,int) ;
 int svn_sqlite__column_revnum (int *,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

svn_error_t *
svn_fs_fs__get_rep_reference(representation_t **rep_p,
                             svn_fs_t *fs,
                             svn_checksum_t *checksum,
                             apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  representation_t *rep;

  SVN_ERR_ASSERT(ffd->rep_sharing_allowed);
  if (! ffd->rep_cache_db)
    SVN_ERR(svn_fs_fs__open_rep_cache(fs, pool));


  if (checksum->kind != svn_checksum_sha1)
    return svn_error_create(SVN_ERR_BAD_CHECKSUM_KIND, ((void*)0),
                            _("Only SHA1 checksums can be used as keys in the "
                              "rep_cache table.\n"));

  SVN_ERR(svn_sqlite__get_statement(&stmt, ffd->rep_cache_db, STMT_GET_REP));
  SVN_ERR(svn_sqlite__bindf(stmt, "s",
                            svn_checksum_to_cstring(checksum, pool)));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (have_row)
    {
      rep = apr_pcalloc(pool, sizeof(*rep));
      svn_fs_fs__id_txn_reset(&(rep->txn_id));
      memcpy(rep->sha1_digest, checksum->digest, sizeof(rep->sha1_digest));
      rep->has_sha1 = TRUE;
      rep->revision = svn_sqlite__column_revnum(stmt, 0);
      rep->item_index = svn_sqlite__column_int64(stmt, 1);
      rep->size = svn_sqlite__column_int64(stmt, 2);
      rep->expanded_size = svn_sqlite__column_int64(stmt, 3);
    }
  else
    rep = ((void*)0);

  SVN_ERR(svn_sqlite__reset(stmt));

  if (rep)
    {
      svn_error_t *err;

      SVN_ERR(svn_fs_fs__fixup_expanded_size(fs, rep, pool));


      err = svn_fs_fs__ensure_revision_exists(rep->revision, fs, pool);
      if (err)
        return svn_error_createf(SVN_ERR_FS_CORRUPT, err,
                                 "Checksum '%s' in rep-cache is beyond HEAD",
                                 svn_checksum_to_cstring_display(checksum,
                                                                 pool));
    }

  *rep_p = rep;
  return SVN_NO_ERROR;
}
