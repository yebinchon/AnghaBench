
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int code ;
 int command (char*,char*) ;
 char* getpass (char*) ;
 int memset (char*,int ,int ) ;
 int strlen (char*) ;

void
account(int argc, char *argv[])
{
 char *ap;
 char emptypass[] = "";

 if (argc == 0 || argc > 2) {
  UPRINTF("usage: %s [password]\n", argv[0]);
  code = -1;
  return;
 }
 else if (argc == 2)
  ap = argv[1];
 else {
  ap = getpass("Account:");
  if (ap == ((void*)0))
   ap = emptypass;
 }
 (void)command("ACCT %s", ap);
 memset(ap, 0, strlen(ap));
}
