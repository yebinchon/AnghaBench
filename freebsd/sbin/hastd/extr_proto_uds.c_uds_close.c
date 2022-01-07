
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* sun_path; } ;
struct uds_ctx {scalar_t__ uc_magic; scalar_t__ uc_fd; scalar_t__ uc_side; scalar_t__ uc_owner; TYPE_1__ uc_sun; } ;


 int LOG_WARNING ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ UDS_CTX_MAGIC ;
 scalar_t__ UDS_SIDE_SERVER_LISTEN ;
 int close (scalar_t__) ;
 int free (struct uds_ctx*) ;
 scalar_t__ getpid () ;
 int pjdlog_errno (int ,char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static void
uds_close(void *ctx)
{
 struct uds_ctx *uctx = ctx;

 PJDLOG_ASSERT(uctx != ((void*)0));
 PJDLOG_ASSERT(uctx->uc_magic == UDS_CTX_MAGIC);

 if (uctx->uc_fd >= 0)
  close(uctx->uc_fd);




 if (uctx->uc_side == UDS_SIDE_SERVER_LISTEN &&
     uctx->uc_owner == getpid()) {
  PJDLOG_ASSERT(uctx->uc_sun.sun_path[0] != '\0');
  if (unlink(uctx->uc_sun.sun_path) == -1) {
   pjdlog_errno(LOG_WARNING,
       "Unable to unlink socket file %s",
       uctx->uc_sun.sun_path);
  }
 }
 uctx->uc_owner = 0;
 uctx->uc_magic = 0;
 free(uctx);
}
