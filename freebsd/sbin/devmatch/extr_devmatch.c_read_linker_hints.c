
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fn ;


 int LINKER_HINTS_VERSION ;
 int MAXPATHLEN ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 int free (int *) ;
 int * hints ;
 void* hints_end ;
 char* linker_hints ;
 char* malloc (size_t) ;
 int * read_hints (char*,size_t*) ;
 int snprintf (char*,int,char*,char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ sysctlbyname (char*,char*,size_t*,int *,int ) ;
 int warnx (char*,int,int) ;

__attribute__((used)) static void
read_linker_hints(void)
{
 char fn[MAXPATHLEN];
 char *modpath, *p, *q;
 size_t buflen, len;

 if (linker_hints == ((void*)0)) {
  if (sysctlbyname("kern.module_path", ((void*)0), &buflen, ((void*)0), 0) < 0)
   errx(1, "Can't find kernel module path.");
  modpath = malloc(buflen);
  if (modpath == ((void*)0))
   err(1, "Can't get memory for modpath.");
  if (sysctlbyname("kern.module_path", modpath, &buflen, ((void*)0), 0) < 0)
   errx(1, "Can't find kernel module path.");
  p = modpath;
  while ((q = strsep(&p, ";")) != ((void*)0)) {
   snprintf(fn, sizeof(fn), "%s/linker.hints", q);
   hints = read_hints(fn, &len);
   if (hints == ((void*)0))
    continue;
   break;
  }
  if (q == ((void*)0))
   errx(1, "Can't read linker hints file.");
 } else {
  hints = read_hints(linker_hints, &len);
  if (hints == ((void*)0))
   err(1, "Can't open %s for reading", fn);
 }

 if (*(int *)(intptr_t)hints != LINKER_HINTS_VERSION) {
  warnx("Linker hints version %d doesn't match expected %d.",
      *(int *)(intptr_t)hints, LINKER_HINTS_VERSION);
  free(hints);
  hints = ((void*)0);
 }
 if (hints != ((void*)0))
  hints_end = (void *)((intptr_t)hints + (intptr_t)len);
}
