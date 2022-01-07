
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MaxPathLen ;
 scalar_t__ chdir (char*) ;
 int code ;
 int * getcwd (char*,int) ;
 int globulize (char**) ;
 char* home ;
 int printf (char*,char*) ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;

void
lcd(int argc, char **argv)
{
 char buf[MaxPathLen];

 if (argc < 2)
  argc++, argv[1] = home;
 if (argc != 2) {
  printf("usage: %s local-directory\n", argv[0]);
  code = -1;
  return;
 }
 if (!globulize(&argv[1])) {
  code = -1;
  return;
 }
 if (chdir(argv[1]) < 0) {
  warn("local: %s", argv[1]);
  code = -1;
  return;
 }
 if (getcwd(buf, sizeof(buf)) != ((void*)0))
  printf("Local directory now %s\n", buf);
 else
  warnx("getwd: %s", buf);
 code = 0;
}
