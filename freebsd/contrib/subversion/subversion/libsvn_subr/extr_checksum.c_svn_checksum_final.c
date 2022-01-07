
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ digest; } ;
typedef TYPE_1__ svn_checksum_t ;
struct TYPE_7__ {int kind; int apr_ctx; } ;
typedef TYPE_2__ svn_checksum_ctx_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_ERR_BAD_CHECKSUM_KIND ;
 int * SVN_NO_ERROR ;
 int apr_md5_final (unsigned char*,int ) ;
 int apr_sha1_final (unsigned char*,int ) ;
 int htonl (int ) ;
 TYPE_1__* svn_checksum_create (int,int *) ;




 int * svn_error_create (int ,int *,int *) ;
 int svn_fnv1a_32__finalize (int ) ;
 int svn_fnv1a_32x4__finalize (int ) ;

svn_error_t *
svn_checksum_final(svn_checksum_t **checksum,
                   const svn_checksum_ctx_t *ctx,
                   apr_pool_t *pool)
{
  *checksum = svn_checksum_create(ctx->kind, pool);

  switch (ctx->kind)
    {
      case 129:
        apr_md5_final((unsigned char *)(*checksum)->digest, ctx->apr_ctx);
        break;

      case 128:
        apr_sha1_final((unsigned char *)(*checksum)->digest, ctx->apr_ctx);
        break;

      case 131:
        *(apr_uint32_t *)(*checksum)->digest
          = htonl(svn_fnv1a_32__finalize(ctx->apr_ctx));
        break;

      case 130:
        *(apr_uint32_t *)(*checksum)->digest
          = htonl(svn_fnv1a_32x4__finalize(ctx->apr_ctx));
        break;

      default:

        return svn_error_create(SVN_ERR_BAD_CHECKSUM_KIND, ((void*)0), ((void*)0));
    }

  return SVN_NO_ERROR;
}
