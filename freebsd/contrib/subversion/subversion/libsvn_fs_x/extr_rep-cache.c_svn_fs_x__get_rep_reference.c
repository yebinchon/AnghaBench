
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_sqlite__stmt_t ;
typedef int svn_revnum_t ;
struct TYPE_14__ {int change_set; void* number; } ;
struct TYPE_15__ {TYPE_1__ id; void* expanded_size; void* size; int has_sha1; int sha1_digest; } ;
typedef TYPE_2__ svn_fs_x__representation_t ;
struct TYPE_16__ {int rep_cache_db; int rep_sharing_allowed; } ;
typedef TYPE_3__ svn_fs_x__data_t ;
struct TYPE_17__ {TYPE_3__* fsap_data; } ;
typedef TYPE_4__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_18__ {scalar_t__ kind; int digest; } ;
typedef TYPE_5__ svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_GET_REP ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_BAD_CHECKSUM_KIND ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ svn_checksum_sha1 ;
 int svn_checksum_to_cstring (TYPE_5__*,int *) ;
 int svn_checksum_to_cstring_display (TYPE_5__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,char*,int ) ;
 int * svn_fs_x__ensure_revision_exists (int ,TYPE_4__*,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__open_rep_cache (TYPE_4__*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ) ;
 void* svn_sqlite__column_int64 (int *,int) ;
 int svn_sqlite__column_revnum (int *,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

svn_error_t *
svn_fs_x__get_rep_reference(svn_fs_x__representation_t **rep_p,
                            svn_fs_t *fs,
                            svn_checksum_t *checksum,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_fs_x__representation_t *rep;

  SVN_ERR_ASSERT(ffd->rep_sharing_allowed);
  if (! ffd->rep_cache_db)
    SVN_ERR(svn_fs_x__open_rep_cache(fs, scratch_pool));


  if (checksum->kind != svn_checksum_sha1)
    return svn_error_create(SVN_ERR_BAD_CHECKSUM_KIND, ((void*)0),
                            _("Only SHA1 checksums can be used as keys in the "
                              "rep_cache table.\n"));

  SVN_ERR(svn_sqlite__get_statement(&stmt, ffd->rep_cache_db, STMT_GET_REP));
  SVN_ERR(svn_sqlite__bindf(stmt, "s",
                            svn_checksum_to_cstring(checksum, scratch_pool)));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (have_row)
    {
      rep = apr_pcalloc(result_pool, sizeof(*rep));
      memcpy(rep->sha1_digest, checksum->digest, sizeof(rep->sha1_digest));
      rep->has_sha1 = TRUE;
      rep->id.change_set = svn_sqlite__column_revnum(stmt, 0);
      rep->id.number = svn_sqlite__column_int64(stmt, 1);
      rep->size = svn_sqlite__column_int64(stmt, 2);
      rep->expanded_size = svn_sqlite__column_int64(stmt, 3);
    }
  else
    rep = ((void*)0);

  SVN_ERR(svn_sqlite__reset(stmt));

  if (rep)
    {

      svn_revnum_t revision = svn_fs_x__get_revnum(rep->id.change_set);
      svn_error_t *err = svn_fs_x__ensure_revision_exists(revision, fs,
                                                          scratch_pool);
      if (err)
        return svn_error_createf(SVN_ERR_FS_CORRUPT, err,
                   "Checksum '%s' in rep-cache is beyond HEAD",
                   svn_checksum_to_cstring_display(checksum, scratch_pool));
    }

  *rep_p = rep;
  return SVN_NO_ERROR;
}
