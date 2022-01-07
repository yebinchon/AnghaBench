
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ o; int * ports; } ;
typedef TYPE_2__ ipfw_insn_u16 ;


 int CHECK_LENGTH (int,int) ;
 int EX_DATAERR ;
 int F_LEN_MASK ;
 int errx (int ,char*) ;
 int strtoport (char*,char**,int ,int) ;
 int warnx (char*,char,char*) ;

__attribute__((used)) static int
fill_newports(ipfw_insn_u16 *cmd, char *av, int proto, int cblen)
{
 uint16_t a, b, *p = cmd->ports;
 int i = 0;
 char *s = av;

 while (*s) {
  a = strtoport(av, &s, 0, proto);
  if (s == av)
   return (0);

  CHECK_LENGTH(cblen, i + 2);

  switch (*s) {
  case '-':
   av = s + 1;
   b = strtoport(av, &s, 0, proto);

   if (s == av || (*s != ',' && *s != '\0'))
    return (0);
   p[0] = a;
   p[1] = b;
   break;
  case ',':
  case '\0':
   p[0] = p[1] = a;
   break;
  default:
   warnx("port list: invalid separator <%c> in <%s>",
    *s, av);
   return (0);
  }

  i++;
  p += 2;
  av = s + 1;
 }
 if (i > 0) {
  if (i + 1 > F_LEN_MASK)
   errx(EX_DATAERR, "too many ports/ranges\n");
  cmd->o.len |= i + 1;
 }
 return (i);
}
