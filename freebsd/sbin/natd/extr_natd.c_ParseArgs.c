
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parmBuf ;


 int ParseOption (char*,char*) ;
 int Usage () ;
 scalar_t__ strlen (char*) ;
 int strncat (char*,char*,int) ;
 int warnx (char*,char*) ;

__attribute__((used)) static void ParseArgs (int argc, char** argv)
{
 int arg;
 char* opt;
 char parmBuf[256];
 int len;

 for (arg = 1; arg < argc; arg++) {

  opt = argv[arg];
  if (*opt != '-') {

   warnx ("invalid option %s", opt);
   Usage ();
  }

  parmBuf[0] = '\0';
  len = 0;

  while (arg < argc - 1) {

   if (argv[arg + 1][0] == '-')
    break;

   if (len) {
    strncat (parmBuf, " ", sizeof(parmBuf) - (len + 1));
    len += strlen(parmBuf + len);
   }

   ++arg;
   strncat (parmBuf, argv[arg], sizeof(parmBuf) - (len + 1));
   len += strlen(parmBuf + len);

  }

  ParseOption (opt + 1, (len ? parmBuf : ((void*)0)));

 }
}
