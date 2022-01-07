
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uds_ctx {int uc_sun; int uc_fd; } ;
struct sockaddr {int dummy; } ;


 int PJDLOG_ASSERT (int) ;
 int UDS_SIDE_CLIENT ;
 int connect (int ,struct sockaddr*,int) ;
 int errno ;
 int uds_close (struct uds_ctx*) ;
 int uds_common_setup (char const*,int ,struct uds_ctx**) ;

__attribute__((used)) static int
uds_connect(const char *srcaddr, const char *dstaddr, int timeout, void **ctxp)
{
 struct uds_ctx *uctx;
 int error;

 PJDLOG_ASSERT(dstaddr != ((void*)0));
 PJDLOG_ASSERT(timeout >= -1);

 error = uds_common_setup(dstaddr, UDS_SIDE_CLIENT, &uctx);
 if (error != 0)
  return (error);

 PJDLOG_ASSERT(srcaddr == ((void*)0));

 if (connect(uctx->uc_fd, (struct sockaddr *)&uctx->uc_sun,
     sizeof(uctx->uc_sun)) == -1) {
  error = errno;
  uds_close(uctx);
  return (error);
 }

 *ctxp = uctx;

 return (0);
}
