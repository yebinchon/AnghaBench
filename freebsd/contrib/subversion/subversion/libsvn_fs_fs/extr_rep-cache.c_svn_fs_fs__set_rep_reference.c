
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int svn_sqlite__stmt_t ;
struct TYPE_20__ {TYPE_5__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_22__ {int digest; int kind; } ;
typedef TYPE_3__ svn_checksum_t ;
struct TYPE_23__ {scalar_t__ expanded_size; scalar_t__ size; scalar_t__ item_index; scalar_t__ revision; int has_sha1; int sha1_digest; } ;
typedef TYPE_4__ representation_t ;
struct TYPE_24__ {int rep_cache_db; int rep_sharing_allowed; } ;
typedef TYPE_5__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int STMT_SET_REP ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_BAD_CHECKSUM_KIND ;
 scalar_t__ SVN_ERR_SQLITE_CONSTRAINT ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_checksum_sha1 ;
 int svn_checksum_to_cstring (TYPE_3__*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_create (int ,int *,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_fs_fs__get_rep_reference (TYPE_4__**,TYPE_1__*,TYPE_3__*,int *) ;
 int svn_fs_fs__open_rep_cache (TYPE_1__*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,int ,int ,int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 TYPE_2__* svn_sqlite__insert (int *,int *) ;

svn_error_t *
svn_fs_fs__set_rep_reference(svn_fs_t *fs,
                             representation_t *rep,
                             apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_sqlite__stmt_t *stmt;
  svn_error_t *err;
  svn_checksum_t checksum;
  checksum.kind = svn_checksum_sha1;
  checksum.digest = rep->sha1_digest;

  SVN_ERR_ASSERT(ffd->rep_sharing_allowed);
  if (! ffd->rep_cache_db)
    SVN_ERR(svn_fs_fs__open_rep_cache(fs, pool));


  if (! rep->has_sha1)
    return svn_error_create(SVN_ERR_BAD_CHECKSUM_KIND, ((void*)0),
                            _("Only SHA1 checksums can be used as keys in the "
                              "rep_cache table.\n"));

  SVN_ERR(svn_sqlite__get_statement(&stmt, ffd->rep_cache_db, STMT_SET_REP));
  SVN_ERR(svn_sqlite__bindf(stmt, "siiii",
                            svn_checksum_to_cstring(&checksum, pool),
                            (apr_int64_t) rep->revision,
                            (apr_int64_t) rep->item_index,
                            (apr_int64_t) rep->size,
                            (apr_int64_t) rep->expanded_size));

  err = svn_sqlite__insert(((void*)0), stmt);
  if (err)
    {
      representation_t *old_rep;

      if (err->apr_err != SVN_ERR_SQLITE_CONSTRAINT)
        return svn_error_trace(err);

      svn_error_clear(err);




      SVN_ERR(svn_fs_fs__get_rep_reference(&old_rep, fs, &checksum, pool));

      if (!old_rep)
        {



        }
    }

  return SVN_NO_ERROR;
}
