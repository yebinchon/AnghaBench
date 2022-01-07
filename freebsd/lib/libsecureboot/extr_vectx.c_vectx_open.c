
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vtable; } ;
struct vectx {int vec_fd; char const* vec_path; char* vec_want; int vec_status; size_t vec_hashsz; TYPE_1__ vec_ctx; TYPE_2__* vec_md; scalar_t__ vec_off; int vec_size; } ;
struct stat {int st_size; int st_mode; } ;
typedef int off_t ;
struct TYPE_7__ {int (* init ) (int *) ;} ;


 int ENOMEM ;
 int SEEK_SET ;
 int S_ISREG (int ) ;
 int VE_FINGERPRINT_IGNORE ;
 int VE_FINGERPRINT_NONE ;
 int VE_FINGERPRINT_UNKNOWN ;
 size_t br_sha1_SIZE ;
 TYPE_2__ br_sha1_vtable ;
 size_t br_sha256_SIZE ;
 TYPE_2__ br_sha256_vtable ;
 size_t br_sha384_SIZE ;
 TYPE_2__ br_sha384_vtable ;
 size_t br_sha512_SIZE ;
 TYPE_2__ br_sha512_vtable ;
 char* fingerprint_info_lookup (int,char const*) ;
 int free (struct vectx*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int lseek (int,int ,int ) ;
 struct vectx* malloc (int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int stub1 (int *) ;
 int ve_error_set (char*,char const*) ;
 int vectx_lseek (struct vectx*,int ,int ) ;

struct vectx *
vectx_open(int fd, const char *path, off_t off, struct stat *stp, int *error)
{
 struct vectx *ctx;
 struct stat st;
 size_t hashsz;
 char *cp;

 if (!stp) {
  if (fstat(fd, &st) == 0)
   stp = &st;
 }


 if (stp && !S_ISREG(stp->st_mode)) {
  *error = 0;
  return (((void*)0));
 }

 ctx = malloc(sizeof(struct vectx));
 if (!ctx)
  goto enomem;
 ctx->vec_fd = fd;
 ctx->vec_path = path;
 ctx->vec_size = stp->st_size;
 ctx->vec_off = 0;
 ctx->vec_want = ((void*)0);
 ctx->vec_status = 0;
 hashsz = 0;

 cp = fingerprint_info_lookup(fd, path);
 if (!cp) {
  ctx->vec_status = VE_FINGERPRINT_NONE;
  ve_error_set("%s: no entry", path);
 } else {
  if (strncmp(cp, "no_hash", 7) == 0) {
   ctx->vec_status = VE_FINGERPRINT_IGNORE;
   hashsz = 0;
  } else if (strncmp(cp, "sha256=", 7) == 0) {
   ctx->vec_md = &br_sha256_vtable;
   hashsz = br_sha256_SIZE;
   cp += 7;
  } else {
   ctx->vec_status = VE_FINGERPRINT_UNKNOWN;
   ve_error_set("%s: no supported fingerprint", path);
  }
 }
 *error = ctx->vec_status;
 ctx->vec_hashsz = hashsz;
 ctx->vec_want = cp;
 if (hashsz > 0) {
  ctx->vec_md->init(&ctx->vec_ctx.vtable);

  if (off > 0) {
   lseek(fd, 0, SEEK_SET);
   vectx_lseek(ctx, off, SEEK_SET);
  }
 }
 return (ctx);

enomem:
 *error = ENOMEM;
 free(ctx);
 return (((void*)0));
}
