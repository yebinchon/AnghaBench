
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int EX_DATAERR ;
 int errx (int ,char*,char*) ;
 int icmp6codes ;
 int match_token (int ,char*) ;
 int strtoul (char*,char**,int ) ;

void
fill_unreach6_code(u_short *codep, char *str)
{
 int val;
 char *s;

 val = strtoul(str, &s, 0);
 if (s == str || *s != '\0' || val >= 0x100)
  val = match_token(icmp6codes, str);
 if (val < 0)
  errx(EX_DATAERR, "unknown ICMPv6 unreachable code ``%s''", str);
 *codep = val;
 return;
}
