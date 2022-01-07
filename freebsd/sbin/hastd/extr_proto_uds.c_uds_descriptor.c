
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uds_ctx {scalar_t__ uc_magic; int uc_fd; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ UDS_CTX_MAGIC ;

__attribute__((used)) static int
uds_descriptor(const void *ctx)
{
 const struct uds_ctx *uctx = ctx;

 PJDLOG_ASSERT(uctx != ((void*)0));
 PJDLOG_ASSERT(uctx->uc_magic == UDS_CTX_MAGIC);

 return (uctx->uc_fd);
}
