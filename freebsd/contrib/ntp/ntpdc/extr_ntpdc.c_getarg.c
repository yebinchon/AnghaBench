
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {char* string; int type; int uval; int ival; int netnum; } ;
typedef TYPE_1__ arg_v ;


 int AF_INET ;
 int AF_INET6 ;





 int OPT ;
 int ZERO (TYPE_1__) ;
 int ai_fam_templ ;
 int fprintf (int ,char*,...) ;
 int getnetnum (char*,int *,char*,int ) ;
 int stderr ;
 char* strchr (char const*,char) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
getarg(
 char *str,
 int code,
 arg_v *argp
 )
{
 int isneg;
 char *cp, *np;
 static const char *digits = "0123456789";

 ZERO(*argp);
 argp->string = str;
 argp->type = code & ~OPT;

 switch (argp->type) {
     case 129:
  break;
     case 131:
  if (!strcmp("-6", str)) {
   ai_fam_templ = AF_INET6;
   return -1;
  } else if (!strcmp("-4", str)) {
   ai_fam_templ = AF_INET;
   return -1;
  }
  if (!getnetnum(str, &(argp->netnum), (char *)0, 0)) {
   return 0;
  }
  break;
     case 130:
     case 128:
  isneg = 0;
  np = str;
  if (*np == '-') {
   np++;
   isneg = 1;
  }

  argp->uval = 0;
  do {
   cp = strchr(digits, *np);
   if (cp == ((void*)0)) {
    (void) fprintf(stderr,
            "***Illegal integer value %s\n", str);
    return 0;
   }
   argp->uval *= 10;
   argp->uval += (u_long)(cp - digits);
  } while (*(++np) != '\0');

  if (isneg) {
   if ((code & ~OPT) == 128) {
    (void) fprintf(stderr,
            "***Value %s should be unsigned\n", str);
    return 0;
   }
   argp->ival = -argp->ival;
  }
  break;
     case 132:
  if (!strcmp("-6", str))
   argp->ival = 6 ;
  else if (!strcmp("-4", str))
   argp->ival = 4 ;
  else {
   (void) fprintf(stderr,
       "***Version must be either 4 or 6\n");
   return 0;
  }
  break;
 }

 return 1;
}
