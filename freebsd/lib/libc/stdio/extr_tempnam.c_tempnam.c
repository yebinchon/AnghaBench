
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 char* P_tmpdir ;
 char* _PATH_TMP ;
 char* _mktemp (char*) ;
 int errno ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ issetugid () ;
 char* malloc (int ) ;
 int snprintf (char*,int ,char*,char*,char const*,...) ;
 int strlen (char*) ;

char *
tempnam(const char *dir, const char *pfx)
{
 int sverrno;
 char *f, *name;

 if (!(name = malloc(MAXPATHLEN)))
  return(((void*)0));

 if (!pfx)
  pfx = "tmp.";

 if (issetugid() == 0 && (f = getenv("TMPDIR"))) {
  (void)snprintf(name, MAXPATHLEN, "%s%s%sXXXXXX", f,
      *(f + strlen(f) - 1) == '/'? "": "/", pfx);
  if ((f = _mktemp(name)))
   return(f);
 }

 if ((f = (char *)dir)) {
  (void)snprintf(name, MAXPATHLEN, "%s%s%sXXXXXX", f,
      *(f + strlen(f) - 1) == '/'? "": "/", pfx);
  if ((f = _mktemp(name)))
   return(f);
 }

 f = P_tmpdir;
 (void)snprintf(name, MAXPATHLEN, "%s%sXXXXXX", f, pfx);
 if ((f = _mktemp(name)))
  return(f);

 f = _PATH_TMP;
 (void)snprintf(name, MAXPATHLEN, "%s%sXXXXXX", f, pfx);
 if ((f = _mktemp(name)))
  return(f);

 sverrno = errno;
 free(name);
 errno = sverrno;
 return(((void*)0));
}
