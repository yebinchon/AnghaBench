
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int* bp; } ;
struct TYPE_7__ {TYPE_1__* cmd; TYPE_3__** argv; } ;
struct TYPE_6__ {int usage; } ;
typedef int SCR ;
typedef TYPE_2__ EXCMD ;
typedef TYPE_3__ ARGS ;


 int EXM_USAGE ;
 int L (char*) ;
 int bdisplay (int *) ;
 int cscope_display (int *) ;
 int ex_emsg (int *,int ,int ) ;
 int ex_sdisplay (int *) ;
 int ex_tag_display (int *) ;
 int is_prefix (TYPE_3__*,int ) ;

int
ex_display(SCR *sp, EXCMD *cmdp)
{
 ARGS *arg;

 arg = cmdp->argv[0];

 switch (arg->bp[0]) {
 case 'b':
  if (!is_prefix(arg, L("buffers")))
   break;
  return (bdisplay(sp));
 case 'c':
  if (!is_prefix(arg, L("connections")))
   break;
  return (cscope_display(sp));
 case 's':
  if (!is_prefix(arg, L("screens")))
   break;
  return (ex_sdisplay(sp));
 case 't':
  if (!is_prefix(arg, L("tags")))
   break;
  return (ex_tag_display(sp));
 }
 ex_emsg(sp, cmdp->cmd->usage, EXM_USAGE);
 return (1);
}
