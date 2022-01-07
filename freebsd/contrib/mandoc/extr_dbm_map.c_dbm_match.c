
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbm_match {int type; int re; int str; } ;





 int abort () ;
 int regexec (int ,char const*,int ,int *,int ) ;
 int * strcasestr (char const*,int ) ;
 int strcmp (char const*,int ) ;

int
dbm_match(const struct dbm_match *match, const char *str)
{
 switch (match->type) {
 case 130:
  return strcmp(str, match->str) == 0;
 case 128:
  return strcasestr(str, match->str) != ((void*)0);
 case 129:
  return regexec(match->re, str, 0, ((void*)0), 0) == 0;
 default:
  abort();
 }
}
