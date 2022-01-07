
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sun_path; } ;
struct uds_ctx {int uc_fd; int uc_owner; TYPE_1__ uc_sun; } ;
struct sockaddr {int dummy; } ;


 int UDS_SIDE_SERVER_LISTEN ;
 int bind (int ,struct sockaddr*,int) ;
 int errno ;
 int getpid () ;
 int listen (int ,int) ;
 int uds_close (struct uds_ctx*) ;
 int uds_common_setup (char const*,int ,struct uds_ctx**) ;
 int unlink (int ) ;

__attribute__((used)) static int
uds_server(const char *addr, void **ctxp)
{
 struct uds_ctx *uctx;
 int error;

 error = uds_common_setup(addr, UDS_SIDE_SERVER_LISTEN, &uctx);
 if (error != 0)
  return (error);

 (void)unlink(uctx->uc_sun.sun_path);
 if (bind(uctx->uc_fd, (struct sockaddr *)&uctx->uc_sun,
     sizeof(uctx->uc_sun)) == -1) {
  error = errno;
  uds_close(uctx);
  return (error);
 }
 uctx->uc_owner = getpid();
 if (listen(uctx->uc_fd, 8) == -1) {
  error = errno;
  uds_close(uctx);
  return (error);
 }

 *ctxp = uctx;

 return (0);
}
