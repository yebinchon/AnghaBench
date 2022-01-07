
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* mac_start; char* mac_end; int mac_name; } ;


 int EOF ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 int fputs (char*,int ) ;
 char getchar () ;
 scalar_t__ interactive ;
 char* macbuf ;
 int macnum ;
 TYPE_1__* macros ;
 int strlcpy (int ,char*,int) ;
 int ttyout ;

void
macdef(int argc, char *argv[])
{
 char *tmp;
 int c;

 if (argc == 0)
  goto usage;
 if (macnum == 16) {
  fputs("Limit of 16 macros have already been defined.\n",
      ttyout);
  code = -1;
  return;
 }
 if ((argc < 2 && !another(&argc, &argv, "macro name")) || argc > 2) {
 usage:
  UPRINTF("usage: %s macro_name\n", argv[0]);
  code = -1;
  return;
 }
 if (interactive)
  fputs(
  "Enter macro line by line, terminating it with a null line.\n",
      ttyout);
 (void)strlcpy(macros[macnum].mac_name, argv[1],
     sizeof(macros[macnum].mac_name));
 if (macnum == 0)
  macros[macnum].mac_start = macbuf;
 else
  macros[macnum].mac_start = macros[macnum - 1].mac_end + 1;
 tmp = macros[macnum].mac_start;
 while (tmp != macbuf+4096) {
  if ((c = getchar()) == EOF) {
   fputs("macdef: end of file encountered.\n", ttyout);
   code = -1;
   return;
  }
  if ((*tmp = c) == '\n') {
   if (tmp == macros[macnum].mac_start) {
    macros[macnum++].mac_end = tmp;
    code = 0;
    return;
   }
   if (*(tmp-1) == '\0') {
    macros[macnum++].mac_end = tmp - 1;
    code = 0;
    return;
   }
   *tmp = '\0';
  }
  tmp++;
 }
 while (1) {
  while ((c = getchar()) != '\n' && c != EOF)
             ;
  if (c == EOF || getchar() == '\n') {
   fputs("Macro not defined - 4K buffer exceeded.\n",
       ttyout);
   code = -1;
   return;
  }
 }
}
