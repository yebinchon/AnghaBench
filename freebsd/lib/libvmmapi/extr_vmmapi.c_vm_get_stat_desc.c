
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;
struct vm_stat_desc {int index; char const* desc; } ;


 int VM_STAT_DESC ;
 scalar_t__ ioctl (int ,int ,struct vm_stat_desc*) ;

const char *
vm_get_stat_desc(struct vmctx *ctx, int index)
{
 static struct vm_stat_desc statdesc;

 statdesc.index = index;
 if (ioctl(ctx->fd, VM_STAT_DESC, &statdesc) == 0)
  return (statdesc.desc);
 else
  return (((void*)0));
}
