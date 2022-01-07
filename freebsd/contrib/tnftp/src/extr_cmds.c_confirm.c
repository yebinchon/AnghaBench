
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cline ;


 int BUFSIZ ;
 int confirmrest ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*,...) ;
 int fputs (char*,int ) ;
 scalar_t__ get_line (int ,char*,int,char const**) ;
 scalar_t__ interactive ;
 scalar_t__ mflag ;
 int stdin ;
 int tolower (unsigned char) ;
 int ttyout ;

__attribute__((used)) static int
confirm(const char *cmd, const char *file)
{
 const char *errormsg;
 char cline[BUFSIZ];
 const char *promptleft, *promptright;

 if (!interactive || confirmrest)
  return (1);
 if (file == ((void*)0)) {
  promptleft = "Continue with";
  promptright = cmd;
 } else {
  promptleft = cmd;
  promptright = file;
 }
 while (1) {
  fprintf(ttyout, "%s %s [anpqy?]? ", promptleft, promptright);
  (void)fflush(ttyout);
  if (get_line(stdin, cline, sizeof(cline), &errormsg) < 0) {
   mflag = 0;
   fprintf(ttyout, "%s; %s aborted\n", errormsg, cmd);
   return (0);
  }
  switch (tolower((unsigned char)*cline)) {
   case 'a':
    confirmrest = 1;
    fprintf(ttyout,
        "Prompting off for duration of %s.\n", cmd);
    break;
   case 'p':
    interactive = 0;
    fputs("Interactive mode: off.\n", ttyout);
    break;
   case 'q':
    mflag = 0;
    fprintf(ttyout, "%s aborted.\n", cmd);

   case 'n':
    return (0);
   case '?':
    fprintf(ttyout,
        "  confirmation options:\n"
        "\ta  answer `yes' for the duration of %s\n"
        "\tn  answer `no' for this file\n"
        "\tp  turn off `prompt' mode\n"
        "\tq  stop the current %s\n"
        "\ty  answer `yes' for this file\n"
        "\t?  this help list\n",
        cmd, cmd);
    continue;
  }
  return (1);
 }

}
