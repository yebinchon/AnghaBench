
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int acctstr ;


 int COMPLETE ;
 int CONTINUE ;
 int UI_UTIL_read_pw_string (char*,int,char*,int ) ;
 int another (int*,char***,char*) ;
 int code ;
 int command (char*,char*) ;
 int fflush (int ) ;
 int fgets (char*,int,int ) ;
 int fprintf (int ,char*) ;
 int printf (char*,...) ;
 int stdin ;
 int stdout ;
 size_t strcspn (char*,char*) ;

void
user(int argc, char **argv)
{
 char acctstr[80];
 int n, aflag = 0;
 char tmp[256];

 if (argc < 2)
  another(&argc, &argv, "username");
 if (argc < 2 || argc > 4) {
  printf("usage: %s username [password] [account]\n", argv[0]);
  code = -1;
  return;
 }
 n = command("USER %s", argv[1]);
 if (n == CONTINUE) {
     if (argc < 3 ) {
  UI_UTIL_read_pw_string (tmp,
        sizeof(tmp),
        "Password: ", 0);
  argv[2] = tmp;
  argc++;
     }
     n = command("PASS %s", argv[2]);
 }
 if (n == CONTINUE) {
  if (argc < 4) {
   printf("Account: "); fflush(stdout);
   fgets(acctstr, sizeof(acctstr) - 1, stdin);
   acctstr[strcspn(acctstr, "\r\n")] = '\0';
   argv[3] = acctstr; argc++;
  }
  n = command("ACCT %s", argv[3]);
  aflag++;
 }
 if (n != COMPLETE) {
  fprintf(stdout, "Login failed.\n");
  return;
 }
 if (!aflag && argc == 4) {
  command("ACCT %s", argv[3]);
 }
}
