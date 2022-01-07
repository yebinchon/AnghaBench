
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbioc_flags {int ioc_level; int ioc_mask; int ioc_flags; } ;
struct smb_ctx {int ct_fd; } ;


 int EINVAL ;
 int SMBIOC_SETFLAGS ;
 int errno ;
 int ioctl (int,int ,struct smbioc_flags*) ;

int
smb_ctx_setflags(struct smb_ctx *ctx, int level, int mask, int flags)
{
 struct smbioc_flags fl;

 if (ctx->ct_fd == -1)
  return EINVAL;
 fl.ioc_level = level;
 fl.ioc_mask = mask;
 fl.ioc_flags = flags;
 if (ioctl(ctx->ct_fd, SMBIOC_SETFLAGS, &fl) == -1)
  return errno;
 return 0;
}
