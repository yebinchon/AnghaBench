
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int * fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_fs_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_ALREADY_EXISTS ;
 TYPE_2__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_fs_base__rep_contents_checksums (int *,int **,int *,char const*,TYPE_1__*,int *) ;
 TYPE_2__* svn_fs_bdb__set_checksum_rep (int *,int *,char const*,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
maybe_store_checksum_rep(const char *rep,
                         trail_t *trail,
                         apr_pool_t *pool)
{
  svn_error_t *err = SVN_NO_ERROR;
  svn_fs_t *fs = trail->fs;
  svn_checksum_t *sha1_checksum;


  SVN_ERR(svn_fs_base__rep_contents_checksums(((void*)0), &sha1_checksum,
                                              fs, rep, trail, pool));
  if (sha1_checksum)
    {
      err = svn_fs_bdb__set_checksum_rep(fs, sha1_checksum, rep, trail, pool);
      if (err && (err->apr_err == SVN_ERR_FS_ALREADY_EXISTS))
        {
          svn_error_clear(err);
          err = SVN_NO_ERROR;
        }
    }
  return svn_error_trace(err);
}
