
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
struct TYPE_3__ {unsigned char const* digest; int kind; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_pool_t ;


 int svn_checksum_sha1 ;
 int svn_checksum_to_cstring (TYPE_1__*,int *) ;
 char const* svn_dirent_join (int ,int ,int *) ;
 int svn_fs_x__path_txn_dir (int *,int ,int *) ;

const char *
svn_fs_x__path_txn_sha1(svn_fs_t *fs,
                        svn_fs_x__txn_id_t txn_id,
                        const unsigned char *sha1,
                        apr_pool_t *pool)
{
  svn_checksum_t checksum;
  checksum.digest = sha1;
  checksum.kind = svn_checksum_sha1;

  return svn_dirent_join(svn_fs_x__path_txn_dir(fs, txn_id, pool),
                         svn_checksum_to_cstring(&checksum, pool),
                         pool);
}
