
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int line ;


 int BUFSIZ ;
 size_t Bflag ;
 int CTLFLAG_TUN ;
 int CTLFLAG_WR ;
 int CTLTYPE ;


 int CTLTYPE_NODE ;
 int CTL_MAXNAME ;
 int ENOENT ;



 scalar_t__ Tflag ;
 scalar_t__ Wflag ;
 int bflag ;
 int * ctl_typename ;
 scalar_t__ dflag ;
 int errno ;
 int exit (int) ;
 int free (void*) ;
 scalar_t__ iflag ;
 scalar_t__ isspace (int) ;
 int name2oid (char*,int*) ;
 int nflag ;
 scalar_t__ oidfmt (int*,int,char*,int*) ;
 int parse_numeric (char*,char*,int,void**,size_t*) ;
 int printf (char*) ;
 int putchar (char) ;
 scalar_t__ qflag ;
 int show_var (int*,int) ;
 int snprintf (char*,int,char*,...) ;
 size_t strlen (char*) ;
 char* strsep (char**,char*) ;
 int sysctl (int*,int,int ,int ,void const*,size_t) ;
 int sysctl_all (int*,int) ;
 int usage () ;
 int warn (char*,char const*,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
parse(const char *string, int lineno)
{
 int len, i, j;
 const void *newval;
 char *newvalstr = ((void*)0);
 void *newbuf;
 size_t newsize = Bflag;
 int mib[CTL_MAXNAME];
 char *cp, *bufp, buf[BUFSIZ], fmt[BUFSIZ], line[BUFSIZ];
 u_int kind;

 if (lineno)
  snprintf(line, sizeof(line), " at line %d", lineno);
 else
  line[0] = '\0';

 cp = buf;
 if (snprintf(buf, BUFSIZ, "%s", string) >= BUFSIZ) {
  warnx("oid too long: '%s'%s", string, line);
  return (1);
 }
 bufp = strsep(&cp, "=:");
 if (cp != ((void*)0)) {

  if (Tflag || Wflag) {
   warnx("Can't set variables when using -T or -W");
   usage();
  }
  while (isspace(*cp))
   cp++;

  switch (*cp) {
  case '\"':
  case '\'':
   if (cp[strlen(cp) - 1] == *cp)
    cp[strlen(cp) - 1] = '\0';
   cp++;
  }
  newvalstr = cp;
  newsize = strlen(cp);
 }

 cp = bufp + strlen(bufp) - 1;
 while (cp >= bufp && isspace((int)*cp)) {
  *cp = '\0';
  cp--;
 }
 len = name2oid(bufp, mib);

 if (len < 0) {
  if (iflag)
   return (0);
  if (qflag)
   return (1);
  else {
   if (errno == ENOENT) {
    warnx("unknown oid '%s'%s", bufp, line);
   } else {
    warn("unknown oid '%s'%s", bufp, line);
   }
   return (1);
  }
 }

 if (oidfmt(mib, len, fmt, &kind)) {
  warn("couldn't find format of oid '%s'%s", bufp, line);
  if (iflag)
   return (1);
  else
   exit(1);
 }

 if (newvalstr == ((void*)0) || dflag) {
  if ((kind & CTLTYPE) == CTLTYPE_NODE) {
   if (dflag) {
    i = show_var(mib, len);
    if (!i && !bflag)
     putchar('\n');
   }
   sysctl_all(mib, len);
  } else {
   i = show_var(mib, len);
   if (!i && !bflag)
    putchar('\n');
  }
 } else {
  if ((kind & CTLTYPE) == CTLTYPE_NODE) {
   warnx("oid '%s' isn't a leaf node%s", bufp, line);
   return (1);
  }

  if (!(kind & CTLFLAG_WR)) {
   if (kind & CTLFLAG_TUN) {
    warnx("oid '%s' is a read only tunable%s", bufp, line);
    warnx("Tunable values are set in /boot/loader.conf");
   } else
    warnx("oid '%s' is read only%s", bufp, line);
   return (1);
  }

  switch (kind & CTLTYPE) {
  case 143:
  case 132:
  case 142:
  case 131:
  case 138:
  case 141:
  case 140:
  case 139:
  case 133:
  case 136:
  case 135:
  case 134:
   if (strlen(newvalstr) == 0) {
    warnx("empty numeric value");
    return (1);
   }

  case 137:
   break;
  default:
   warnx("oid '%s' is type %d,"
    " cannot set that%s", bufp,
    kind & CTLTYPE, line);
   return (1);
  }

  newbuf = ((void*)0);

  switch (kind & CTLTYPE) {
  case 137:
   newval = newvalstr;
   break;
  default:
   newsize = 0;
   while ((cp = strsep(&newvalstr, " ,")) != ((void*)0)) {
    if (*cp == '\0')
     continue;
    if (!parse_numeric(cp, fmt, kind, &newbuf,
        &newsize)) {
     warnx("invalid %s '%s'%s",
         ctl_typename[kind & CTLTYPE],
         cp, line);
     free(newbuf);
     return (1);
    }
   }
   newval = newbuf;
   break;
  }

  i = show_var(mib, len);
  if (sysctl(mib, len, 0, 0, newval, newsize) == -1) {
   free(newbuf);
   if (!i && !bflag)
    putchar('\n');
   switch (errno) {
   case 128:
    warnx("%s: value is not available%s",
     string, line);
    return (1);
   case 129:
    warnx("%s: specification is incomplete%s",
     string, line);
    return (1);
   case 130:
    warnx("%s: type is unknown to this program%s",
     string, line);
    return (1);
   default:
    warn("%s%s", string, line);
    return (1);
   }
  }
  free(newbuf);
  if (!bflag)
   printf(" -> ");
  i = nflag;
  nflag = 1;
  j = show_var(mib, len);
  if (!j && !bflag)
   putchar('\n');
  nflag = i;
 }

 return (0);
}
