
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int svn_sqlite__stmt_t ;
struct TYPE_21__ {scalar_t__ number; scalar_t__ change_set; } ;
struct TYPE_22__ {scalar_t__ expanded_size; scalar_t__ size; TYPE_1__ id; int has_sha1; int sha1_digest; } ;
typedef TYPE_2__ svn_fs_x__representation_t ;
struct TYPE_23__ {int rep_cache_db; int rep_sharing_allowed; } ;
typedef TYPE_3__ svn_fs_x__data_t ;
struct TYPE_24__ {TYPE_3__* fsap_data; } ;
typedef TYPE_4__ svn_fs_t ;
struct TYPE_25__ {scalar_t__ apr_err; } ;
typedef TYPE_5__ svn_error_t ;
struct TYPE_26__ {int digest; int kind; } ;
typedef TYPE_6__ svn_checksum_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int STMT_SET_REP ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_BAD_CHECKSUM_KIND ;
 scalar_t__ SVN_ERR_SQLITE_CONSTRAINT ;
 TYPE_5__* SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_checksum_sha1 ;
 int svn_checksum_to_cstring (TYPE_6__*,int *) ;
 int svn_error_clear (TYPE_5__*) ;
 TYPE_5__* svn_error_create (int ,int *,int ) ;
 TYPE_5__* svn_error_trace (TYPE_5__*) ;
 int svn_fs_x__get_rep_reference (TYPE_2__**,TYPE_4__*,TYPE_6__*,int *,int *) ;
 int svn_fs_x__open_rep_cache (TYPE_4__*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,int ,int ,int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 TYPE_5__* svn_sqlite__insert (int *,int *) ;

svn_error_t *
svn_fs_x__set_rep_reference(svn_fs_t *fs,
                            svn_fs_x__representation_t *rep,
                            apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_sqlite__stmt_t *stmt;
  svn_error_t *err;
  svn_checksum_t checksum;
  checksum.kind = svn_checksum_sha1;
  checksum.digest = rep->sha1_digest;

  SVN_ERR_ASSERT(ffd->rep_sharing_allowed);
  if (! ffd->rep_cache_db)
    SVN_ERR(svn_fs_x__open_rep_cache(fs, scratch_pool));


  if (! rep->has_sha1)
    return svn_error_create(SVN_ERR_BAD_CHECKSUM_KIND, ((void*)0),
                            _("Only SHA1 checksums can be used as keys in the "
                              "rep_cache table.\n"));

  SVN_ERR(svn_sqlite__get_statement(&stmt, ffd->rep_cache_db, STMT_SET_REP));
  SVN_ERR(svn_sqlite__bindf(stmt, "siiii",
                            svn_checksum_to_cstring(&checksum, scratch_pool),
                            (apr_int64_t) rep->id.change_set,
                            (apr_int64_t) rep->id.number,
                            (apr_int64_t) rep->size,
                            (apr_int64_t) rep->expanded_size));

  err = svn_sqlite__insert(((void*)0), stmt);
  if (err)
    {
      svn_fs_x__representation_t *old_rep;

      if (err->apr_err != SVN_ERR_SQLITE_CONSTRAINT)
        return svn_error_trace(err);

      svn_error_clear(err);




      SVN_ERR(svn_fs_x__get_rep_reference(&old_rep, fs, &checksum,
                                          scratch_pool, scratch_pool));

      if (!old_rep)
        {



        }
    }

  return SVN_NO_ERROR;
}
