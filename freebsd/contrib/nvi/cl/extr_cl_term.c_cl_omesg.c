
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_3__ {scalar_t__ tgw; } ;
typedef int SCR ;
typedef TYPE_1__ CL_PRIVATE ;


 int M_SYSERR ;
 int STDERR_FILENO ;
 int S_IWGRP ;
 scalar_t__ TGW_SET ;
 scalar_t__ TGW_UNKNOWN ;
 scalar_t__ TGW_UNSET ;
 scalar_t__ chmod (char*,int) ;
 int msgq (int *,int ,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* ttyname (int ) ;

int
cl_omesg(SCR *sp, CL_PRIVATE *clp, int on)
{
 struct stat sb;
 char *tty;


 if ((tty = ttyname(STDERR_FILENO)) == ((void*)0)) {
  if (sp != ((void*)0))
   msgq(sp, M_SYSERR, "stderr");
  return (1);
 }
 if (stat(tty, &sb) < 0) {
  if (sp != ((void*)0))
   msgq(sp, M_SYSERR, "%s", tty);
  return (1);
 }


 if (clp->tgw == TGW_UNKNOWN)
  clp->tgw = sb.st_mode & S_IWGRP ? TGW_SET : TGW_UNSET;


 if (on) {
  if (chmod(tty, sb.st_mode | S_IWGRP) < 0) {
   if (sp != ((void*)0))
    msgq(sp, M_SYSERR,
        "046|messages not turned on: %s", tty);
   return (1);
  }
 } else
  if (chmod(tty, sb.st_mode & ~S_IWGRP) < 0) {
   if (sp != ((void*)0))
    msgq(sp, M_SYSERR,
        "045|messages not turned off: %s", tty);
   return (1);
  }
 return (0);
}
