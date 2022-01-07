
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int len; int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 int CHECK_CMDLEN ;
 int EX_DATAERR ;
 int F_INSN_SIZE (int ) ;
 int O_DSCP ;
 int errx (int ,char*) ;
 int f_ipdscp ;
 int ipfw_insn_u32 ;
 scalar_t__ isalpha (char) ;
 int match_token (int ,char*) ;
 char* strchr (char*,char) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static void
fill_dscp(ipfw_insn *cmd, char *av, int cblen)
{
 uint32_t *low, *high;
 char *s = av, *a;
 int code;

 cmd->opcode = O_DSCP;
 cmd->len |= F_INSN_SIZE(ipfw_insn_u32) + 1;

 CHECK_CMDLEN;

 low = (uint32_t *)(cmd + 1);
 high = low + 1;

 *low = 0;
 *high = 0;

 while (s != ((void*)0)) {
  a = strchr(s, ',');

  if (a != ((void*)0))
   *a++ = '\0';

  if (isalpha(*s)) {
   if ((code = match_token(f_ipdscp, s)) == -1)
    errx(EX_DATAERR, "Unknown DSCP code");
  } else {
   code = strtoul(s, ((void*)0), 10);
   if (code < 0 || code > 63)
    errx(EX_DATAERR, "Invalid DSCP value");
  }

  if (code >= 32)
   *high |= 1 << (code - 32);
  else
   *low |= 1 << code;

  s = a;
 }
}
