
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_pool_t ;


 int APR_MD5_DIGESTSIZE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int memcpy (unsigned char*,int ,int ) ;
 int svn_checksum_md5 ;
 int svn_io_file_checksum2 (TYPE_1__**,char const*,int ,int *) ;

svn_error_t *
svn_io_file_checksum(unsigned char digest[],
                     const char *file,
                     apr_pool_t *pool)
{
  svn_checksum_t *checksum;

  SVN_ERR(svn_io_file_checksum2(&checksum, file, svn_checksum_md5, pool));
  memcpy(digest, checksum->digest, APR_MD5_DIGESTSIZE);

  return SVN_NO_ERROR;
}
