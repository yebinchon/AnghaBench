
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uds_ctx {scalar_t__ uc_magic; scalar_t__ uc_fd; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ UDS_CTX_MAGIC ;
 int proto_common_recv (scalar_t__,unsigned char*,size_t,int*) ;

__attribute__((used)) static int
uds_recv(void *ctx, unsigned char *data, size_t size, int *fdp)
{
 struct uds_ctx *uctx = ctx;

 PJDLOG_ASSERT(uctx != ((void*)0));
 PJDLOG_ASSERT(uctx->uc_magic == UDS_CTX_MAGIC);
 PJDLOG_ASSERT(uctx->uc_fd >= 0);

 return (proto_common_recv(uctx->uc_fd, data, size, fdp));
}
