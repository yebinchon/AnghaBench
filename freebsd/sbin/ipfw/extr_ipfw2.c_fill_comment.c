
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 int CHECK_CMDLEN ;
 int EX_DATAERR ;
 int F_NOT ;
 int F_OR ;
 int O_NOP ;
 int errx (int ,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
fill_comment(ipfw_insn *cmd, char **av, int cblen)
{
 int i, l;
 char *p = (char *)(cmd + 1);

 cmd->opcode = O_NOP;
 cmd->len = (cmd->len & (F_NOT | F_OR));


 for (i = 0, l = 0; av[i] != ((void*)0); i++)
  l += strlen(av[i]) + 1;
 if (l == 0)
  return;
 if (l > 84)
  errx(EX_DATAERR,
      "comment too long (max 80 chars)");
 l = 1 + (l+3)/4;
 cmd->len = (cmd->len & (F_NOT | F_OR)) | l;
 CHECK_CMDLEN;

 for (i = 0; av[i] != ((void*)0); i++) {
  strcpy(p, av[i]);
  p += strlen(av[i]);
  *p++ = ' ';
 }
 *(--p) = '\0';
}
