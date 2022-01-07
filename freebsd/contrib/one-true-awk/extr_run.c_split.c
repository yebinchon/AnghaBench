
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uschar ;
struct TYPE_12__ {int initstat; scalar_t__ restr; } ;
typedef TYPE_1__ fa ;
struct TYPE_13__ {int tval; char* sval; int fval; int nval; } ;
typedef int Node ;
typedef TYPE_2__ Cell ;
typedef int Array ;


 int ARR ;
 int FATAL (char*) ;
 int NN (int ) ;
 int NSYMTAB ;
 int NUM ;
 int REGEXPR ;
 int STR ;
 int STRING ;
 double atof (char*) ;
 int dprintf (char*) ;
 TYPE_2__* execute (int *) ;
 int free (char*) ;
 int freesymtab (TYPE_2__*) ;
 TYPE_2__* fsloc ;
 char* getsval (TYPE_2__*) ;
 TYPE_2__* gettemp () ;
 scalar_t__ is_number (char*) ;
 scalar_t__ isdigit (int ) ;
 TYPE_1__* makedfa (char*,int) ;
 scalar_t__ makesymtab (int ) ;
 scalar_t__ nematch (TYPE_1__*,char*) ;
 scalar_t__* patbeg ;
 int patlen ;
 int ptoi (int *) ;
 int setsymtab (char*,char*,double,int,int *) ;
 int sprintf (char*,char*,int) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int tempfree (TYPE_2__*) ;

Cell *split(Node **a, int nnn)
{
 Cell *x = ((void*)0), *y, *ap;
 char *s, *origs;
 char *fs = ((void*)0), *origfs = ((void*)0);
 int sep;
 char *t, temp, num[50];
 int n, tempstat, arg3type;

 y = execute(a[0]);
 origs = s = strdup(getsval(y));
 arg3type = ptoi(a[3]);
 if (a[2] == ((void*)0))
  fs = getsval(fsloc);
 else if (arg3type == STRING) {
  x = execute(a[2]);
  origfs = fs = strdup(getsval(x));
  tempfree(x);
 } else if (arg3type == REGEXPR)
  fs = "(regexpr)";
 else
  FATAL("illegal type of split");
 sep = *fs;
 ap = execute(a[1]);
 freesymtab(ap);
    dprintf( ("split: s=|%s|, a=%s, sep=|%s|\n", s, NN(ap->nval), fs) );
 ap->tval &= ~STR;
 ap->tval |= ARR;
 ap->sval = (char *) makesymtab(NSYMTAB);

 n = 0;
        if (arg3type == REGEXPR && strlen((char*)((fa*)a[2])->restr) == 0) {

  arg3type = 0;
  fs = "";
  sep = 0;
 }
 if (*s != '\0' && (strlen(fs) > 1 || arg3type == REGEXPR)) {
  fa *pfa;
  if (arg3type == REGEXPR) {
   pfa = (fa *) a[2];
  } else {
   pfa = makedfa(fs, 1);
  }
  if (nematch(pfa,s)) {
   tempstat = pfa->initstat;
   pfa->initstat = 2;
   do {
    n++;
    sprintf(num, "%d", n);
    temp = *patbeg;
    *patbeg = '\0';
    if (is_number(s))
     setsymtab(num, s, atof(s), STR|NUM, (Array *) ap->sval);
    else
     setsymtab(num, s, 0.0, STR, (Array *) ap->sval);
    *patbeg = temp;
    s = patbeg + patlen;
    if (*(patbeg+patlen-1) == 0 || *s == 0) {
     n++;
     sprintf(num, "%d", n);
     setsymtab(num, "", 0.0, STR, (Array *) ap->sval);
     pfa->initstat = tempstat;
     goto spdone;
    }
   } while (nematch(pfa,s));
   pfa->initstat = tempstat;

  }
  n++;
  sprintf(num, "%d", n);
  if (is_number(s))
   setsymtab(num, s, atof(s), STR|NUM, (Array *) ap->sval);
  else
   setsymtab(num, s, 0.0, STR, (Array *) ap->sval);
  spdone:
  pfa = ((void*)0);
 } else if (sep == ' ') {
  for (n = 0; ; ) {
   while (*s == ' ' || *s == '\t' || *s == '\n')
    s++;
   if (*s == 0)
    break;
   n++;
   t = s;
   do
    s++;
   while (*s!=' ' && *s!='\t' && *s!='\n' && *s!='\0');
   temp = *s;
   *s = '\0';
   sprintf(num, "%d", n);
   if (is_number(t))
    setsymtab(num, t, atof(t), STR|NUM, (Array *) ap->sval);
   else
    setsymtab(num, t, 0.0, STR, (Array *) ap->sval);
   *s = temp;
   if (*s != 0)
    s++;
  }
 } else if (sep == 0) {
  for (n = 0; *s != 0; s++) {
   char buf[2];
   n++;
   sprintf(num, "%d", n);
   buf[0] = *s;
   buf[1] = 0;
   if (isdigit((uschar)buf[0]))
    setsymtab(num, buf, atof(buf), STR|NUM, (Array *) ap->sval);
   else
    setsymtab(num, buf, 0.0, STR, (Array *) ap->sval);
  }
 } else if (*s != 0) {
  for (;;) {
   n++;
   t = s;
   while (*s != sep && *s != '\n' && *s != '\0')
    s++;
   temp = *s;
   *s = '\0';
   sprintf(num, "%d", n);
   if (is_number(t))
    setsymtab(num, t, atof(t), STR|NUM, (Array *) ap->sval);
   else
    setsymtab(num, t, 0.0, STR, (Array *) ap->sval);
   *s = temp;
   if (*s++ == 0)
    break;
  }
 }
 tempfree(ap);
 tempfree(y);
 free(origs);
 free(origfs);
 x = gettemp();
 x->tval = NUM;
 x->fval = n;
 return(x);
}
