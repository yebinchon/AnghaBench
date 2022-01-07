
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ seq_t ;
struct TYPE_16__ {int argc; TYPE_2__** argv; int iflags; } ;
struct TYPE_15__ {TYPE_1__* gp; } ;
struct TYPE_14__ {char* bp; int len; } ;
struct TYPE_13__ {int (* scr_fmap ) (TYPE_3__*,scalar_t__,char*,int ,char*,int ) ;} ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ EXCMD ;
typedef char CHAR_T ;


 int E_C_FORCE ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int KEY_NAME (TYPE_3__*,char) ;
 int KEY_VAL (TYPE_3__*,char) ;



 int M_ERR ;
 int M_INFO ;
 scalar_t__ SEQ_COMMAND ;
 int SEQ_FUNCMAP ;
 scalar_t__ SEQ_INPUT ;
 int SEQ_USERDEF ;
 int abort () ;
 scalar_t__ isdigit (char) ;
 int msgq (TYPE_3__*,int ,char*,...) ;
 int seq_dump (TYPE_3__*,scalar_t__,int) ;
 int seq_set (TYPE_3__*,int *,int ,char*,int ,char*,int ,scalar_t__,int) ;
 int stub1 (TYPE_3__*,scalar_t__,char*,int ,char*,int ) ;

int
ex_map(SCR *sp, EXCMD *cmdp)
{
 seq_t stype;
 CHAR_T *input, *p;

 stype = FL_ISSET(cmdp->iflags, E_C_FORCE) ? SEQ_INPUT : SEQ_COMMAND;

 switch (cmdp->argc) {
 case 0:
  if (seq_dump(sp, stype, 1) == 0)
   msgq(sp, M_INFO, stype == SEQ_INPUT ?
       "132|No input map entries" :
       "133|No command map entries");
  return (0);
 case 2:
  input = cmdp->argv[0]->bp;
  break;
 default:
  abort();
 }







 if (input[0] == '#' && isdigit(input[1])) {
  for (p = input + 2; isdigit(*p); ++p);
  if (p[0] != '\0')
   goto nofunc;

  if (seq_set(sp, ((void*)0), 0, input, cmdp->argv[0]->len,
      cmdp->argv[1]->bp, cmdp->argv[1]->len, stype,
      SEQ_FUNCMAP | SEQ_USERDEF))
   return (1);
  return (sp->gp->scr_fmap == ((void*)0) ? 0 :
      sp->gp->scr_fmap(sp, stype, input, cmdp->argv[0]->len,
      cmdp->argv[1]->bp, cmdp->argv[1]->len));
 }


nofunc: if (stype == SEQ_COMMAND && input[1] == '\0')
  switch (KEY_VAL(sp, input[0])) {
  case 130:
  case 129:
  case 128:
   msgq(sp, M_ERR,
       "134|The %s character may not be remapped",
       KEY_NAME(sp, input[0]));
   return (1);
  }
 return (seq_set(sp, ((void*)0), 0, input, cmdp->argv[0]->len,
     cmdp->argv[1]->bp, cmdp->argv[1]->len, stype, SEQ_USERDEF));
}
