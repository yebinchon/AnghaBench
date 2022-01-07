
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


 TYPE_1__* checksum_create_without_digest (int,int ,int *) ;
 int * digest_sizes ;
 int memset (unsigned char*,int ,int ) ;





svn_checksum_t *
svn_checksum_create(svn_checksum_kind_t kind,
                    apr_pool_t *pool)
{
  svn_checksum_t *checksum;
  apr_size_t digest_size;

  switch (kind)
    {
      case 129:
      case 128:
      case 131:
      case 130:
        digest_size = digest_sizes[kind];
        break;

      default:
        return ((void*)0);
    }

  checksum = checksum_create_without_digest(kind, digest_size, pool);
  memset((unsigned char *) checksum->digest, 0, digest_size);
  return checksum;
}
