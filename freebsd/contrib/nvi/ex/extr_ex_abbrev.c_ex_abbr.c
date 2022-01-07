
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int argc; TYPE_1__** argv; } ;
struct TYPE_10__ {int gp; } ;
struct TYPE_9__ {char* bp; int len; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXCMD ;
typedef char CHAR_T ;


 int F_SET (int ,int ) ;
 int G_ABBREV ;
 scalar_t__ ISBLANK (char) ;
 int M_ERR ;
 int M_INFO ;
 int SEQ_ABBREV ;
 int SEQ_USERDEF ;
 int abort () ;
 scalar_t__ inword (char) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int seq_dump (TYPE_2__*,int ,int ) ;
 scalar_t__ seq_set (TYPE_2__*,int *,int ,char*,int,char*,int,int ,int ) ;

int
ex_abbr(SCR *sp, EXCMD *cmdp)
{
 CHAR_T *p;
 size_t len;

 switch (cmdp->argc) {
 case 0:
  if (seq_dump(sp, SEQ_ABBREV, 0) == 0)
   msgq(sp, M_INFO, "105|No abbreviations to display");
  return (0);
 case 2:
  break;
 default:
  abort();
 }
 if (!inword(cmdp->argv[0]->bp[cmdp->argv[0]->len - 1])) {
  msgq(sp, M_ERR,
      "106|Abbreviations must end with a \"word\" character");
   return (1);
 }
 for (p = cmdp->argv[0]->bp; *p != '\0'; ++p)
  if (ISBLANK(p[0])) {
   msgq(sp, M_ERR,
       "107|Abbreviations may not contain tabs or spaces");
   return (1);
  }
 if (cmdp->argv[0]->len > 2)
  for (p = cmdp->argv[0]->bp,
      len = cmdp->argv[0]->len - 2; len; --len, ++p)
   if (inword(p[0]) != inword(p[1])) {
    msgq(sp, M_ERR,
"108|Abbreviations may not mix word/non-word characters, except at the end");
    return (1);
   }

 if (seq_set(sp, ((void*)0), 0, cmdp->argv[0]->bp, cmdp->argv[0]->len,
     cmdp->argv[1]->bp, cmdp->argv[1]->len, SEQ_ABBREV, SEQ_USERDEF))
  return (1);

 F_SET(sp->gp, G_ABBREV);
 return (0);
}
