
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbioc_rw {char* ioc_base; size_t ioc_cnt; int ioc_offset; int ioc_fh; } ;
struct smb_ctx {int ct_fd; } ;
typedef int smbfh ;
typedef int off_t ;


 int SMBIOC_READ ;
 int ioctl (int ,int ,struct smbioc_rw*) ;

int
smb_read(struct smb_ctx *ctx, smbfh fh, off_t offset, size_t count, char *dst)
{
 struct smbioc_rw rwrq;

 rwrq.ioc_fh = fh;
 rwrq.ioc_base = dst;
 rwrq.ioc_cnt = count;
 rwrq.ioc_offset = offset;
 if (ioctl(ctx->ct_fd, SMBIOC_READ, &rwrq) == -1)
  return -1;
 return rwrq.ioc_cnt;
}
