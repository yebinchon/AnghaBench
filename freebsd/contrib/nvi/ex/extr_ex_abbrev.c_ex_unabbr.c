
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int bp; int len; } ;
struct TYPE_9__ {TYPE_3__** argv; } ;
struct TYPE_8__ {int gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXCMD ;
typedef TYPE_3__ ARGS ;


 int F_ISSET (int ,int ) ;
 int G_ABBREV ;
 int M_ERR ;
 int SEQ_ABBREV ;
 int msgq_wstr (TYPE_1__*,int ,int ,char*) ;
 scalar_t__ seq_delete (TYPE_1__*,int ,int ,int ) ;

int
ex_unabbr(SCR *sp, EXCMD *cmdp)
{
 ARGS *ap;

 ap = cmdp->argv[0];
 if (!F_ISSET(sp->gp, G_ABBREV) ||
     seq_delete(sp, ap->bp, ap->len, SEQ_ABBREV)) {
  msgq_wstr(sp, M_ERR, ap->bp,
      "109|\"%s\" is not an abbreviation");
  return (1);
 }
 return (0);
}
