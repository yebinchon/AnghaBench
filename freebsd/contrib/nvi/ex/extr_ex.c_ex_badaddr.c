
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_long ;
typedef int recno_t ;
typedef enum nresult { ____Placeholder_nresult } nresult ;
typedef enum badaddr { ____Placeholder_badaddr } badaddr ;
struct TYPE_10__ {int * name; } ;
struct TYPE_9__ {int * ep; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXCMDLIST ;







 int EXM_NOFILEYET ;
 int M_ERR ;
 int M_SYSERR ;




 int abort () ;
 int db_last (TYPE_1__*,int *) ;
 int ex_wemsg (TYPE_1__*,int *,int ) ;
 int msgq (TYPE_1__*,int ,char*,...) ;
 int msgq_wstr (TYPE_1__*,int ,int *,char*) ;

void
ex_badaddr(SCR *sp, const EXCMDLIST *cp, enum badaddr ba, enum nresult nret)
{
 recno_t lno;

 switch (nret) {
 case 130:
  break;
 case 131:
  msgq(sp, M_SYSERR, ((void*)0));
  return;
 case 129:
  msgq(sp, M_ERR, "099|Address value overflow");
  return;
 case 128:
  msgq(sp, M_ERR, "100|Address value underflow");
  return;
 }





 if (sp->ep == ((void*)0)) {
  ex_wemsg(sp, cp ? cp->name : ((void*)0), EXM_NOFILEYET);
  return;
 }

 switch (ba) {
 case 136:
  msgq(sp, M_ERR, "101|Illegal address combination");
  break;
 case 134:
  if (db_last(sp, &lno))
   return;
  if (lno != 0) {
   msgq(sp, M_ERR,
       "102|Illegal address: only %lu lines in the file",
       (u_long)lno);
   break;
  }

 case 135:
  msgq(sp, M_ERR, "103|Illegal address: the file is empty");
  break;
 case 133:
  abort();

 case 132:
  msgq_wstr(sp, M_ERR, cp->name,
      "104|The %s command doesn't permit an address of 0");
  break;
 }
 return;
}
