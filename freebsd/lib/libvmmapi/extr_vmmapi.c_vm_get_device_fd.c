
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;



int
vm_get_device_fd(struct vmctx *ctx)
{

 return (ctx->fd);
}
