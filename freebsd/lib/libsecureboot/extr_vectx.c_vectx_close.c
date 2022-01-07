
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vectx {scalar_t__ vec_hashsz; int vec_status; int vec_want; int vec_path; int vec_md; int vec_ctx; } ;


 int free (struct vectx*) ;
 int ve_check_hash (int *,int ,int ,int ,scalar_t__) ;

int
vectx_close(struct vectx *ctx)
{
 int rc;

 if (ctx->vec_hashsz == 0) {
  rc = ctx->vec_status;
 } else {
  rc = ve_check_hash(&ctx->vec_ctx, ctx->vec_md,
      ctx->vec_path, ctx->vec_want, ctx->vec_hashsz);
 }
 free(ctx);
 return ((rc < 0) ? rc : 0);
}
