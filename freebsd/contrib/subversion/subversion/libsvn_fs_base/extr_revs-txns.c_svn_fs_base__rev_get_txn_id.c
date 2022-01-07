
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_3__ {char* txn_id; } ;
typedef TYPE_1__ revision_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_fs_base__err_corrupt_fs_revision (int *,int ) ;
 int svn_fs_bdb__get_rev (TYPE_1__**,int *,int ,int *,int *) ;

svn_error_t *
svn_fs_base__rev_get_txn_id(const char **txn_id_p,
                            svn_fs_t *fs,
                            svn_revnum_t rev,
                            trail_t *trail,
                            apr_pool_t *pool)
{
  revision_t *revision;

  SVN_ERR(svn_fs_bdb__get_rev(&revision, fs, rev, trail, pool));
  if (revision->txn_id == ((void*)0))
    return svn_fs_base__err_corrupt_fs_revision(fs, rev);

  *txn_id_p = revision->txn_id;
  return SVN_NO_ERROR;
}
