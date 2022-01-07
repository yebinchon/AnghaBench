
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sun ;
struct uds_ctx {scalar_t__ uc_magic; int uc_fd; } ;
struct sockaddr_un {scalar_t__ sun_family; char* sun_path; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int socklen_t ;


 scalar_t__ AF_UNIX ;
 int PJDLOG_ASSERT (int) ;
 int PJDLOG_VERIFY (int) ;
 scalar_t__ UDS_CTX_MAGIC ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 scalar_t__ snprintf (char*,size_t,char*,char*) ;
 size_t strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void
uds_local_address(const void *ctx, char *addr, size_t size)
{
 const struct uds_ctx *uctx = ctx;
 struct sockaddr_un sun;
 socklen_t sunlen;

 PJDLOG_ASSERT(uctx != ((void*)0));
 PJDLOG_ASSERT(uctx->uc_magic == UDS_CTX_MAGIC);
 PJDLOG_ASSERT(addr != ((void*)0));

 sunlen = sizeof(sun);
 if (getsockname(uctx->uc_fd, (struct sockaddr *)&sun, &sunlen) < 0) {
  PJDLOG_VERIFY(strlcpy(addr, "N/A", size) < size);
  return;
 }
 PJDLOG_ASSERT(sun.sun_family == AF_UNIX);
 if (sun.sun_path[0] == '\0') {
  PJDLOG_VERIFY(strlcpy(addr, "N/A", size) < size);
  return;
 }
 PJDLOG_VERIFY(snprintf(addr, size, "uds://%s", sun.sun_path) < (ssize_t)size);
}
