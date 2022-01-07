
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 char* control (char) ;
 char escape ;
 int fflush (int ) ;
 int fgets (char*,int,int ) ;
 int printf (char*,...) ;
 int stdin ;
 int stdout ;

__attribute__((used)) static int
setescape(int argc, char *argv[])
{
 char *arg;
 char buf[50];

 printf(
     "Deprecated usage - please use 'set escape%s%s' in the future.\r\n",
    (argc > 2)? " ":"", (argc > 2)? argv[1]: "");
 if (argc > 2)
  arg = argv[1];
 else {
  printf("new escape character: ");
  fgets(buf, sizeof(buf), stdin);
  arg = buf;
 }
 if (arg[0] != '\0')
  escape = arg[0];
 printf("Escape character is '%s'.\r\n", control(escape));

 fflush(stdout);
 return 1;
}
