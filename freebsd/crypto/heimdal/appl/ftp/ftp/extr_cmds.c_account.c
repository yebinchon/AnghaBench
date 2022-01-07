
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acctstr ;


 int UI_UTIL_read_pw_string (char*,int,char*,int ) ;
 int command (char*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;

void
account(int argc, char **argv)
{
 char acctstr[50];

 if (argc > 1) {
  ++argv;
  --argc;
  strlcpy (acctstr, *argv, sizeof(acctstr));
  while (argc > 1) {
   --argc;
   ++argv;
   strlcat(acctstr, *argv, sizeof(acctstr));
  }
 }
 else {
     UI_UTIL_read_pw_string(acctstr, sizeof(acctstr), "Account:", 0);
 }
 command("ACCT %s", acctstr);
}
