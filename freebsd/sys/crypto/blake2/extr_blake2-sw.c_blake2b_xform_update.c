
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct blake2b_xform_ctx {int state; } ;


 int EINVAL ;
 int blake2b_update_ref (int *,int const*,int ) ;

__attribute__((used)) static int
blake2b_xform_update(void *vctx, const uint8_t *data, uint16_t len)
{
 struct blake2b_xform_ctx *ctx = vctx;
 int rc;

 rc = blake2b_update_ref(&ctx->state, data, len);
 if (rc != 0)
  return (EINVAL);
 return (0);
}
