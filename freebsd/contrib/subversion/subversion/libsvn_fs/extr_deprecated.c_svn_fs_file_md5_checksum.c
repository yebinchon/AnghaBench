
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_pool_t ;


 int APR_MD5_DIGESTSIZE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int memcpy (unsigned char*,int ,int ) ;
 int svn_checksum_md5 ;
 int svn_fs_file_checksum (TYPE_1__**,int ,int *,char const*,int ,int *) ;

svn_error_t *
svn_fs_file_md5_checksum(unsigned char digest[],
                         svn_fs_root_t *root,
                         const char *path,
                         apr_pool_t *pool)
{
  svn_checksum_t *md5sum;

  SVN_ERR(svn_fs_file_checksum(&md5sum, svn_checksum_md5, root, path, TRUE,
                               pool));
  memcpy(digest, md5sum->digest, APR_MD5_DIGESTSIZE);

  return SVN_NO_ERROR;
}
