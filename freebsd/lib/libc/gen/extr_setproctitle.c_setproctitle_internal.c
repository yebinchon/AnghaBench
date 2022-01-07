
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int ul_ps_strings ;
struct ps_strings {char** ps_argvstr; int ps_nargvstr; } ;


 int SPT_BUFSIZE ;
 char* _getprogname () ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,char*,...) ;
 size_t strlen (char*) ;
 int sysctlbyname (char*,unsigned long*,size_t*,int *,int ) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static char *
setproctitle_internal(const char *fmt, va_list ap)
{
 static struct ps_strings *ps_strings;
 static char *buf = ((void*)0);
 static char *obuf = ((void*)0);
 static char **oargv, *kbuf;
 static int oargc = -1;
 static char *nargv[2] = { ((void*)0), ((void*)0) };
 char **nargvp;
 int nargc;
 int i;
 size_t len;
 unsigned long ul_ps_strings;

 if (buf == ((void*)0)) {
  buf = malloc(SPT_BUFSIZE);
  if (buf == ((void*)0))
   return (((void*)0));
  nargv[0] = buf;
 }

 if (obuf == ((void*)0) ) {
  obuf = malloc(SPT_BUFSIZE);
  if (obuf == ((void*)0))
   return (((void*)0));
  *obuf = '\0';
 }

 if (fmt) {
  buf[SPT_BUFSIZE - 1] = '\0';

  if (fmt[0] == '-') {

   fmt++;
   len = 0;
  } else {

   (void)snprintf(buf, SPT_BUFSIZE, "%s: ", _getprogname());
   len = strlen(buf);
  }


  (void)vsnprintf(buf + len, SPT_BUFSIZE - len, fmt, ap);

  nargvp = nargv;
  nargc = 1;
  kbuf = buf;
 } else if (*obuf != '\0') {

  nargvp = oargv;
  nargc = oargc;
  kbuf = obuf;
 } else

  return (((void*)0));

 if (ps_strings == ((void*)0)) {
  len = sizeof(ul_ps_strings);
  if (sysctlbyname("kern.ps_strings", &ul_ps_strings, &len, ((void*)0),
      0) == -1)
   return (((void*)0));
  ps_strings = (struct ps_strings *)ul_ps_strings;
 }





 if (ps_strings->ps_argvstr == ((void*)0))
  return (((void*)0));


 if (oargc == -1) {

  oargc = ps_strings->ps_nargvstr;
  oargv = ps_strings->ps_argvstr;
  for (i = len = 0; i < oargc; i++) {






   if (oargv[i] == ((void*)0)) {
    oargc = i;
    break;
   }
   snprintf(obuf + len, SPT_BUFSIZE - len, "%s%s",
       len != 0 ? " " : "", oargv[i]);
   if (len != 0)
    len++;
   len += strlen(oargv[i]);
   if (len >= SPT_BUFSIZE)
    break;
  }
 }
 ps_strings->ps_nargvstr = nargc;
 ps_strings->ps_argvstr = nargvp;

 return (nargvp[0]);
}
