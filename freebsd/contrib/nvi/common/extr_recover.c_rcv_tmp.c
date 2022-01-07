
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_4__ {char* rcv_path; } ;
typedef int SCR ;
typedef TYPE_1__ EXF ;


 scalar_t__ ENOENT ;
 int F_RCV_ON ;
 int F_SET (TYPE_1__*,int ) ;
 int M_ERR ;
 int M_SYSERR ;
 int O_RECDIR ;
 char* O_STR (int *,int ) ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_ISVTX ;
 int chmod (char*,int) ;
 int close (int) ;
 scalar_t__ errno ;
 int fchmod (int,int) ;
 int free (char*) ;
 char* join (char*,char*) ;
 scalar_t__ mkdir (char*,int ) ;
 int msgq (int *,int ,char*,...) ;
 scalar_t__ opts_empty (int *,int ,int ) ;
 int rcv_mktemp (int *,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

int
rcv_tmp(
 SCR *sp,
 EXF *ep,
 char *name)
{
 struct stat sb;
 int fd;
 char *dp, *path;
 if (opts_empty(sp, O_RECDIR, 0))
  goto err;
 dp = O_STR(sp, O_RECDIR);
 if (stat(dp, &sb)) {
  if (errno != ENOENT || mkdir(dp, 0)) {
   msgq(sp, M_SYSERR, "%s", dp);
   goto err;
  }
  (void)chmod(dp, S_IRWXU | S_IRWXG | S_IRWXO | S_ISVTX);
 }

 if ((path = join(dp, "vi.XXXXXX")) == ((void*)0))
  goto err;
 if ((fd = rcv_mktemp(sp, path, dp)) == -1) {
  free(path);
  goto err;
 }
 (void)fchmod(fd, S_IRWXU);
 (void)close(fd);

 ep->rcv_path = path;
 if (0) {
err: msgq(sp, M_ERR,
      "056|Modifications not recoverable if the session fails");
  return (1);
 }


 F_SET(ep, F_RCV_ON);
 return (0);
}
