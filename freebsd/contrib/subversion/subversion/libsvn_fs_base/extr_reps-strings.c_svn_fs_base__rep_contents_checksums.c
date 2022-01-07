
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct TYPE_3__ {int sha1_checksum; int md5_checksum; } ;
typedef TYPE_1__ representation_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_checksum_dup (int ,int *) ;
 int svn_fs_bdb__read_rep (TYPE_1__**,int *,char const*,int *,int *) ;

svn_error_t *
svn_fs_base__rep_contents_checksums(svn_checksum_t **md5_checksum,
                                    svn_checksum_t **sha1_checksum,
                                    svn_fs_t *fs,
                                    const char *rep_key,
                                    trail_t *trail,
                                    apr_pool_t *pool)
{
  representation_t *rep;

  SVN_ERR(svn_fs_bdb__read_rep(&rep, fs, rep_key, trail, pool));
  if (md5_checksum)
    *md5_checksum = svn_checksum_dup(rep->md5_checksum, pool);
  if (sha1_checksum)
    *sha1_checksum = svn_checksum_dup(rep->sha1_checksum, pool);

  return SVN_NO_ERROR;
}
