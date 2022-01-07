
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int DIGESTSIZE (int ) ;
 TYPE_1__* checksum_create_without_digest (int ,int ,int *) ;
 int memcpy (unsigned char*,unsigned char const*,int ) ;

__attribute__((used)) static svn_checksum_t *
checksum_create(svn_checksum_kind_t kind,
                const unsigned char *digest,
                apr_pool_t *pool)
{
  apr_size_t digest_size = DIGESTSIZE(kind);
  svn_checksum_t *checksum = checksum_create_without_digest(kind, digest_size,
                                                            pool);
  memcpy((unsigned char *)checksum->digest, digest, digest_size);
  return checksum;
}
