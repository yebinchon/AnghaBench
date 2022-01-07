
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; int bp; } ;
struct TYPE_4__ {int iflags; TYPE_2__** argv; } ;
typedef int SCR ;
typedef int FREF ;
typedef TYPE_1__ EXCMD ;
typedef TYPE_2__ ARGS ;


 int E_C_FORCE ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int FR_RECOVER ;
 int FS_FORCE ;
 int FS_SETALT ;
 int F_SET (int *,int ) ;
 int INT2CHAR (int *,int ,scalar_t__,char*,size_t) ;
 int SC_FSWITCH ;
 int * file_add (int *,char*) ;
 scalar_t__ file_init (int *,int *,int *,int) ;
 scalar_t__ file_m2 (int *,scalar_t__) ;
 int set_alt_name (int *,char*) ;

int
ex_recover(SCR *sp, EXCMD *cmdp)
{
 ARGS *ap;
 FREF *frp;
 char *np;
 size_t nlen;

 ap = cmdp->argv[0];


 INT2CHAR(sp, ap->bp, ap->len+1, np, nlen);
 set_alt_name(sp, np);





 if (file_m2(sp, FL_ISSET(cmdp->iflags, E_C_FORCE)))
  return (1);


 INT2CHAR(sp, ap->bp, ap->len+1, np, nlen);
 if ((frp = file_add(sp, np)) == ((void*)0))
  return (1);


 F_SET(frp, FR_RECOVER);


 if (file_init(sp, frp, ((void*)0), FS_SETALT |
     (FL_ISSET(cmdp->iflags, E_C_FORCE) ? FS_FORCE : 0)))
  return (1);

 F_SET(sp, SC_FSWITCH);
 return (0);
}
