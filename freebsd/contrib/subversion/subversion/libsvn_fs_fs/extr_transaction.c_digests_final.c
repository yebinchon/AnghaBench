
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int svn_checksum_ctx_t ;
struct TYPE_7__ {int has_sha1; int sha1_digest; int md5_digest; } ;
typedef TYPE_2__ representation_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int memcpy (int ,int ,int ) ;
 int svn_checksum_final (TYPE_1__**,int const*,int *) ;
 int svn_checksum_size (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
digests_final(representation_t *rep,
              const svn_checksum_ctx_t *md5_ctx,
              const svn_checksum_ctx_t *sha1_ctx,
              apr_pool_t *pool)
{
  svn_checksum_t *checksum;

  SVN_ERR(svn_checksum_final(&checksum, md5_ctx, pool));
  memcpy(rep->md5_digest, checksum->digest, svn_checksum_size(checksum));
  rep->has_sha1 = sha1_ctx != ((void*)0);
  if (rep->has_sha1)
    {
      SVN_ERR(svn_checksum_final(&checksum, sha1_ctx, pool));
      memcpy(rep->sha1_digest, checksum->digest, svn_checksum_size(checksum));
    }

  return SVN_NO_ERROR;
}
