
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Ambiguous (char**) ;
 int connected ;
 int fprintf (int ,char*,char*,char const*) ;
 scalar_t__ genget (char*,char**,int) ;
 scalar_t__ isprefix (char*,char*) ;
 int printf (char*,...) ;
 int stderr ;
 int strlen (char*) ;
 void stub1 (int,int) ;

__attribute__((used)) static int
send_tncmd(void (*func)(int, int), const char *cmd, char *name)
{
    char **cpp;
    extern char *telopts[];
    int val = 0;

    if (isprefix(name, "help") || isprefix(name, "?")) {
 int col, len;

 printf("usage: send %s <value|option>\n", cmd);
 printf("\"value\" must be from 0 to 255\n");
 printf("Valid options are:\n\t");

 col = 8;
 for (cpp = telopts; *cpp; cpp++) {
     len = strlen(*cpp) + 3;
     if (col + len > 65) {
  printf("\n\t");
  col = 8;
     }
     printf(" \"%s\"", *cpp);
     col += len;
 }
 printf("\n");
 return 0;
    }
    cpp = (char **)genget(name, telopts, sizeof(char *));
    if (Ambiguous(cpp)) {
 fprintf(stderr,"'%s': ambiguous argument ('send %s ?' for help).\n",
     name, cmd);
 return 0;
    }
    if (cpp) {
 val = cpp - telopts;
    } else {
 char *cp = name;

 while (*cp >= '0' && *cp <= '9') {
     val *= 10;
     val += *cp - '0';
     cp++;
 }
 if (*cp != 0) {
     fprintf(stderr, "'%s': unknown argument ('send %s ?' for help).\n",
     name, cmd);
     return 0;
 } else if (val < 0 || val > 255) {
     fprintf(stderr, "'%s': bad value ('send %s ?' for help).\n",
     name, cmd);
     return 0;
 }
    }
    if (!connected) {
 printf("?Need to be connected first.\n");
 return 0;
    }
    (*func)(val, 1);
    return 1;
}
