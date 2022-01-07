
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (int) ;
 int isascii (int) ;
 int msg (char*,char const*) ;

__attribute__((used)) static int
okname(const char *cp0)
{
 const char *cp;
 int c;

 for (cp = cp0; *cp; cp++) {
  c = *cp;
  if (!isascii(c) || !(isalnum(c) || c == '_' || c == '-')) {
   msg("invalid user name %s\n", cp0);
   return (0);
  }
 }
 return (1);
}
