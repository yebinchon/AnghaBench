
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int APR_MD5_DIGESTSIZE ;
 char const* svn__digest_to_cstring_display (unsigned char const*,int ,int *) ;

const char *
svn_md5_digest_to_cstring_display(const unsigned char digest[],
                                  apr_pool_t *pool)
{
  return svn__digest_to_cstring_display(digest, APR_MD5_DIGESTSIZE, pool);
}
