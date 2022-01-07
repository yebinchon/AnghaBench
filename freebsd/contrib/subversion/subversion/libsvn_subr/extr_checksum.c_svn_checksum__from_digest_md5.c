
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int * checksum_create (int ,unsigned char const*,int *) ;
 int svn_checksum_md5 ;

svn_checksum_t *
svn_checksum__from_digest_md5(const unsigned char *digest,
                              apr_pool_t *result_pool)
{
  return checksum_create(svn_checksum_md5, digest, result_pool);
}
