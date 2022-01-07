
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int kind; int apr_ctx; } ;
typedef TYPE_1__ svn_checksum_ctx_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR_BAD_CHECKSUM_KIND ;
 int * SVN_NO_ERROR ;
 int apr_md5_update (int ,void const*,scalar_t__) ;
 int apr_sha1_update (int ,void const*,unsigned int) ;




 int * svn_error_create (int ,int *,int *) ;
 int svn_fnv1a_32__update (int ,void const*,scalar_t__) ;
 int svn_fnv1a_32x4__update (int ,void const*,scalar_t__) ;

svn_error_t *
svn_checksum_update(svn_checksum_ctx_t *ctx,
                    const void *data,
                    apr_size_t len)
{
  switch (ctx->kind)
    {
      case 129:
        apr_md5_update(ctx->apr_ctx, data, len);
        break;

      case 128:
        apr_sha1_update(ctx->apr_ctx, data, (unsigned int)len);
        break;

      case 131:
        svn_fnv1a_32__update(ctx->apr_ctx, data, len);
        break;

      case 130:
        svn_fnv1a_32x4__update(ctx->apr_ctx, data, len);
        break;

      default:

        return svn_error_create(SVN_ERR_BAD_CHECKSUM_KIND, ((void*)0), ((void*)0));
    }

  return SVN_NO_ERROR;
}
