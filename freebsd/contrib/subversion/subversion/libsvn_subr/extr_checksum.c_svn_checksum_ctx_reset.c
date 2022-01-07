
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int kind; int apr_ctx; } ;
typedef TYPE_1__ svn_checksum_ctx_t ;
typedef int apr_sha1_ctx_t ;
typedef int apr_md5_ctx_t ;


 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int apr_md5_init (int ) ;
 int apr_sha1_init (int ) ;
 int memset (int ,int ,int) ;




 int svn_fnv1a_32__context_reset (int ) ;
 int svn_fnv1a_32x4__context_reset (int ) ;

svn_error_t *
svn_checksum_ctx_reset(svn_checksum_ctx_t *ctx)
{
  switch (ctx->kind)
    {
      case 129:
        memset(ctx->apr_ctx, 0, sizeof(apr_md5_ctx_t));
        apr_md5_init(ctx->apr_ctx);
        break;

      case 128:
        memset(ctx->apr_ctx, 0, sizeof(apr_sha1_ctx_t));
        apr_sha1_init(ctx->apr_ctx);
        break;

      case 131:
        svn_fnv1a_32__context_reset(ctx->apr_ctx);
        break;

      case 130:
        svn_fnv1a_32x4__context_reset(ctx->apr_ctx);
        break;

      default:
        SVN_ERR_MALFUNCTION();
    }

  return SVN_NO_ERROR;
}
