
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmdbuf ;
typedef int buf ;
typedef int FILE ;


 int MAXPATHLEN ;
 int MAX_C_NAME ;
 int UPRINTF (char*,char*) ;
 int code ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ get_line (int *,char*,int,int *) ;
 int getit (int,char**,int ,char const*) ;
 scalar_t__ restart_point ;
 int strlcpy (char*,char*,int) ;
 int ttyout ;

void
fget(int argc, char *argv[])
{
 const char *gmode;
 FILE *fp;
 char buf[MAXPATHLEN], cmdbuf[MAX_C_NAME];

 if (argc != 2) {
  UPRINTF("usage: %s localfile\n", argv[0]);
  code = -1;
  return;
 }

 fp = fopen(argv[1], "r");
 if (fp == ((void*)0)) {
  fprintf(ttyout, "Can't open source file %s\n", argv[1]);
  code = -1;
  return;
 }

 (void)strlcpy(cmdbuf, "get", sizeof(cmdbuf));
 argv[0] = cmdbuf;
 gmode = restart_point ? "r+" : "w";

 while (get_line(fp, buf, sizeof(buf), ((void*)0)) >= 0) {
  if (buf[0] == '\0')
   continue;
  argv[1] = buf;
  (void)getit(argc, argv, 0, gmode);
 }
 fclose(fp);
}
