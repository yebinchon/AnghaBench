
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_man {int dummy; } ;
struct mdoc_argv {size_t arg; int line; int pos; int * value; scalar_t__ sz; } ;
struct mdoc_arg {int argc; struct mdoc_argv* argv; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
typedef enum mdocargt { ____Placeholder_mdocargt } mdocargt ;
struct TYPE_2__ {int* argvs; } ;





 size_t MDOC_ARG_MAX ;
 int MDOC_Dd ;
 int MDOC_MAX ;
 int argv_multi (struct roff_man*,int,struct mdoc_argv*,int*,char*) ;
 int argv_single (struct roff_man*,int,struct mdoc_argv*,int*,char*) ;
 int* argvflags ;
 int assert (int) ;
 struct mdoc_arg* mandoc_calloc (int,int) ;
 struct mdoc_argv* mandoc_reallocarray (struct mdoc_argv*,int,int) ;
 int * mdoc_argnames ;
 TYPE_1__* mdocargs ;
 int memcpy (struct mdoc_argv*,struct mdoc_argv*,int) ;
 int strcmp (char*,int ) ;

void
mdoc_argv(struct roff_man *mdoc, int line, enum roff_tok tok,
 struct mdoc_arg **reta, int *pos, char *buf)
{
 struct mdoc_argv tmpv;
 struct mdoc_argv **retv;
 const enum mdocargt *argtable;
 char *argname;
 int ipos, retc;
 char savechar;

 *reta = ((void*)0);



 assert(tok >= MDOC_Dd && tok < MDOC_MAX);
 argtable = mdocargs[tok - MDOC_Dd].argvs;
 if (argtable == ((void*)0))
  return;



 ipos = *pos;
 while (buf[ipos] == '-') {



  for (argname = buf + ++ipos; buf[ipos] != '\0'; ipos++)
   if (buf[ipos] == ' ' && buf[ipos - 1] != '\\')
    break;
  if ((savechar = buf[ipos]) != '\0')
   buf[ipos++] = '\0';






  while ((tmpv.arg = *argtable++) != MDOC_ARG_MAX)
   if ( ! strcmp(argname, mdoc_argnames[tmpv.arg]))
    break;



  if (tmpv.arg == MDOC_ARG_MAX) {
   if (savechar != '\0')
    buf[ipos - 1] = savechar;
   break;
  }



  while (buf[ipos] == ' ')
   ipos++;



  tmpv.line = line;
  tmpv.pos = *pos;
  tmpv.sz = 0;
  tmpv.value = ((void*)0);

  switch (argvflags[tmpv.arg]) {
  case 128:
   argv_single(mdoc, line, &tmpv, &ipos, buf);
   break;
  case 130:
   argv_multi(mdoc, line, &tmpv, &ipos, buf);
   break;
  case 129:
   break;
  }



  if (*reta == ((void*)0))
   *reta = mandoc_calloc(1, sizeof(**reta));

  retc = ++(*reta)->argc;
  retv = &(*reta)->argv;
  *retv = mandoc_reallocarray(*retv, retc, sizeof(**retv));
  memcpy(*retv + retc - 1, &tmpv, sizeof(**retv));



  *pos = ipos;
  argtable = mdocargs[tok - MDOC_Dd].argvs;
 }
}
