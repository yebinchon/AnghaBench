
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _s_x {int dummy; } ;


 int EX_USAGE ;
 int errx (int ,char*,char*,char const*,char const*) ;
 int match_token_relaxed (struct _s_x*,char const*) ;

int
get_token(struct _s_x *table, const char *string, const char *errbase)
{
 int tcmd;

 if ((tcmd = match_token_relaxed(table, string)) < 0)
  errx(EX_USAGE, "%s %s %s",
      (tcmd == 0) ? "invalid" : "ambiguous", errbase, string);

 return (tcmd);
}
