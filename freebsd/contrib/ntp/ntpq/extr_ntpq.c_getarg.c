
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {char const* string; int ival; int uval; int netnum; } ;
typedef TYPE_1__ arg_v ;
struct TYPE_5__ {int assid; } ;







 int OPT ;
 TYPE_3__* assoc_cache ;
 int atoint (char const*,int*) ;
 int atouint (char const*,int *) ;
 int dogetassoc (int ) ;
 int fprintf (int ,char*,...) ;
 int getnetnum (char const*,int *,int *,int ) ;
 int min (int ,int ) ;
 int numassoc ;
 int stderr ;
 int stdout ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int
getarg(
 const char *str,
 int code,
 arg_v *argp
 )
{
 u_long ul;

 switch (code & ~OPT) {
 case 129:
  argp->string = str;
  break;

 case 131:
  if (!getnetnum(str, &argp->netnum, ((void*)0), 0))
   return 0;
  break;

 case 128:
  if ('&' == str[0]) {
   if (!atouint(&str[1], &ul)) {
    fprintf(stderr,
     "***Association index `%s' invalid/undecodable\n",
     str);
    return 0;
   }
   if (0 == numassoc) {
    dogetassoc(stdout);
    if (0 == numassoc) {
     fprintf(stderr,
      "***No associations found, `%s' unknown\n",
      str);
     return 0;
    }
   }
   ul = min(ul, numassoc);
   argp->uval = assoc_cache[ul - 1].assid;
   break;
  }
  if (!atouint(str, &argp->uval)) {
   fprintf(stderr, "***Illegal unsigned value %s\n",
    str);
   return 0;
  }
  break;

 case 130:
  if (!atoint(str, &argp->ival)) {
   fprintf(stderr, "***Illegal integer value %s\n",
    str);
   return 0;
  }
  break;

 case 132:
  if (!strcmp("-6", str)) {
   argp->ival = 6;
  } else if (!strcmp("-4", str)) {
   argp->ival = 4;
  } else {
   fprintf(stderr, "***Version must be either 4 or 6\n");
   return 0;
  }
  break;
 }

 return 1;
}
