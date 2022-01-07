
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uds_ctx {int uc_fd; int uc_side; int uc_magic; scalar_t__ uc_owner; int uc_sun; } ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 int UDS_CTX_MAGIC ;
 int errno ;
 int free (struct uds_ctx*) ;
 struct uds_ctx* malloc (int) ;
 int socket (int ,int ,int ) ;
 int uds_addr (char const*,int *) ;

__attribute__((used)) static int
uds_common_setup(const char *addr, void **ctxp, int side)
{
 struct uds_ctx *uctx;
 int ret;

 uctx = malloc(sizeof(*uctx));
 if (uctx == ((void*)0))
  return (errno);


 if ((ret = uds_addr(addr, &uctx->uc_sun)) != 0) {
  free(uctx);
  return (ret);
 }

 uctx->uc_fd = socket(AF_UNIX, SOCK_STREAM, 0);
 if (uctx->uc_fd == -1) {
  ret = errno;
  free(uctx);
  return (ret);
 }

 uctx->uc_side = side;
 uctx->uc_owner = 0;
 uctx->uc_magic = UDS_CTX_MAGIC;
 *ctxp = uctx;

 return (0);
}
