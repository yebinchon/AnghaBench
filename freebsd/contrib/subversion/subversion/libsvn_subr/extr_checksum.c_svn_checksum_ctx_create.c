
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_checksum_kind_t ;
struct TYPE_3__ {int kind; void* apr_ctx; } ;
typedef TYPE_1__ svn_checksum_ctx_t ;
typedef int apr_sha1_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_md5_ctx_t ;


 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 int apr_md5_init (void*) ;
 void* apr_palloc (int *,int) ;
 int apr_sha1_init (void*) ;




 void* svn_fnv1a_32__context_create (int *) ;
 void* svn_fnv1a_32x4__context_create (int *) ;

svn_checksum_ctx_t *
svn_checksum_ctx_create(svn_checksum_kind_t kind,
                        apr_pool_t *pool)
{
  svn_checksum_ctx_t *ctx = apr_palloc(pool, sizeof(*ctx));

  ctx->kind = kind;
  switch (kind)
    {
      case 129:
        ctx->apr_ctx = apr_palloc(pool, sizeof(apr_md5_ctx_t));
        apr_md5_init(ctx->apr_ctx);
        break;

      case 128:
        ctx->apr_ctx = apr_palloc(pool, sizeof(apr_sha1_ctx_t));
        apr_sha1_init(ctx->apr_ctx);
        break;

      case 131:
        ctx->apr_ctx = svn_fnv1a_32__context_create(pool);
        break;

      case 130:
        ctx->apr_ctx = svn_fnv1a_32x4__context_create(pool);
        break;

      default:
        SVN_ERR_MALFUNCTION_NO_RETURN();
    }

  return ctx;
}
