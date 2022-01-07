
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {scalar_t__ kind; scalar_t__ digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int svn_checksum_ctx_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int ntohl (int const) ;
 int svn_checksum_final (TYPE_1__**,int *,int *) ;
 scalar_t__ svn_checksum_fnv1a_32x4 ;

__attribute__((used)) static svn_error_t *
fnv1a_checksum_finalize(apr_uint32_t *digest,
                        svn_checksum_ctx_t *context,
                        apr_pool_t *scratch_pool)
{
  svn_checksum_t *checksum;

  SVN_ERR(svn_checksum_final(&checksum, context, scratch_pool));
  SVN_ERR_ASSERT(checksum->kind == svn_checksum_fnv1a_32x4);
  *digest = ntohl(*(const apr_uint32_t *)(checksum->digest));

  return SVN_NO_ERROR;
}
