
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uschar ;
struct TYPE_4__ {struct TYPE_4__* nnext; } ;
typedef TYPE_1__ Node ;
typedef int Cell ;


 int FATAL (char*,...) ;
 int MAXNUMSIZE ;
 int WARNING (char*,char*) ;
 int adjbuf (char**,int*,...) ;
 int atoi (char const*) ;
 int * execute (TYPE_1__*) ;
 int free (char*) ;
 int getfval (int *) ;
 int* getsval (int *) ;
 scalar_t__ isalpha (int ) ;
 int isnum (int *) ;
 scalar_t__ malloc (int) ;
 int recsize ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int tempfree (int *) ;

int format(char **pbuf, int *pbufsize, const char *s, Node *a)
{
 char *fmt;
 char *p, *t;
 const char *os;
 Cell *x;
 int flag = 0, n;
 int fmtwd;
 int fmtsz = recsize;
 char *buf = *pbuf;
 int bufsize = *pbufsize;

 static int first = 1;
 static int have_a_format = 0;

 if (first) {
  char buf[100];

  sprintf(buf, "%a", 42.0);
  have_a_format = (strcmp(buf, "0x1.5p+5") == 0);
  first = 0;
 }

 os = s;
 p = buf;
 if ((fmt = (char *) malloc(fmtsz)) == ((void*)0))
  FATAL("out of memory in format()");
 while (*s) {
  adjbuf(&buf, &bufsize, MAXNUMSIZE+1+p-buf, recsize, &p, "format1");
  if (*s != '%') {
   *p++ = *s++;
   continue;
  }
  if (*(s+1) == '%') {
   *p++ = '%';
   s += 2;
   continue;
  }

  fmtwd = atoi(s+1);
  if (fmtwd < 0)
   fmtwd = -fmtwd;
  adjbuf(&buf, &bufsize, fmtwd+1+p-buf, recsize, &p, "format2");
  for (t = fmt; (*t++ = *s) != '\0'; s++) {
   if (!adjbuf(&fmt, &fmtsz, MAXNUMSIZE+1+t-fmt, recsize, &t, "format3"))
    FATAL("format item %.30s... ran format() out of memory", os);
   if (isalpha((uschar)*s) && *s != 'l' && *s != 'h' && *s != 'L')
    break;
   if (*s == '$') {
    FATAL("'$' not permitted in awk formats");
   }
   if (*s == '*') {
    if (a == ((void*)0)) {
     FATAL("not enough args in printf(%s)", os);
    }
    x = execute(a);
    a = a->nnext;
    sprintf(t-1, "%d", fmtwd=(int) getfval(x));
    if (fmtwd < 0)
     fmtwd = -fmtwd;
    adjbuf(&buf, &bufsize, fmtwd+1+p-buf, recsize, &p, "format");
    t = fmt + strlen(fmt);
    tempfree(x);
   }
  }
  *t = '\0';
  if (fmtwd < 0)
   fmtwd = -fmtwd;
  adjbuf(&buf, &bufsize, fmtwd+1+p-buf, recsize, &p, "format4");
  switch (*s) {
  case 'a': case 'A':
   if (have_a_format)
    flag = *s;
   else
    flag = 'f';
   break;
  case 'f': case 'e': case 'g': case 'E': case 'G':
   flag = 'f';
   break;
  case 'd': case 'i':
   flag = 'd';
   if(*(s-1) == 'l') break;
   *(t-1) = 'l';
   *t = 'd';
   *++t = '\0';
   break;
  case 'o': case 'x': case 'X': case 'u':
   flag = *(s-1) == 'l' ? 'd' : 'u';
   break;
  case 's':
   flag = 's';
   break;
  case 'c':
   flag = 'c';
   break;
  default:
   WARNING("weird printf conversion %s", fmt);
   flag = '?';
   break;
  }
  if (a == ((void*)0))
   FATAL("not enough args in printf(%s)", os);
  x = execute(a);
  a = a->nnext;
  n = MAXNUMSIZE;
  if (fmtwd > n)
   n = fmtwd;
  adjbuf(&buf, &bufsize, 1+n+p-buf, recsize, &p, "format5");
  switch (flag) {
  case '?': sprintf(p, "%s", fmt);
   t = getsval(x);
   n = strlen(t);
   if (fmtwd > n)
    n = fmtwd;
   adjbuf(&buf, &bufsize, 1+strlen(p)+n+p-buf, recsize, &p, "format6");
   p += strlen(p);
   sprintf(p, "%s", t);
   break;
  case 'a':
  case 'A':
  case 'f': sprintf(p, fmt, getfval(x)); break;
  case 'd': sprintf(p, fmt, (long) getfval(x)); break;
  case 'u': sprintf(p, fmt, (int) getfval(x)); break;
  case 's':
   t = getsval(x);
   n = strlen(t);
   if (fmtwd > n)
    n = fmtwd;
   if (!adjbuf(&buf, &bufsize, 1+n+p-buf, recsize, &p, "format7"))
    FATAL("huge string/format (%d chars) in printf %.30s... ran format() out of memory", n, t);
   sprintf(p, fmt, t);
   break;
  case 'c':
   if (isnum(x)) {
    if ((int)getfval(x))
     sprintf(p, fmt, (int) getfval(x));
    else {
     *p++ = '\0';
     *p = '\0';
    }
   } else
    sprintf(p, fmt, getsval(x)[0]);
   break;
  default:
   FATAL("can't happen: bad conversion %c in format()", flag);
  }
  tempfree(x);
  p += strlen(p);
  s++;
 }
 *p = '\0';
 free(fmt);
 for ( ; a; a = a->nnext)
  execute(a);
 *pbuf = buf;
 *pbufsize = bufsize;
 return p - buf;
}
