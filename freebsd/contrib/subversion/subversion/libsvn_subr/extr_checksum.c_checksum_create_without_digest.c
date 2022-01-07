
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* digest; int kind; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,scalar_t__) ;

__attribute__((used)) static svn_checksum_t *
checksum_create_without_digest(svn_checksum_kind_t kind,
                               apr_size_t digest_size,
                               apr_pool_t *pool)
{


  svn_checksum_t *checksum = apr_palloc(pool, sizeof(*checksum) + digest_size);
  checksum->digest = (unsigned char *)checksum + sizeof(*checksum);
  checksum->kind = kind;
  return checksum;
}
