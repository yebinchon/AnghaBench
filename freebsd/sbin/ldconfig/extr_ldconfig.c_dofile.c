
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int MAXPATHLEN ;
 int dodir (char*,int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ isspace (char) ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;

int
dofile(char *fname, int silent)
{
 FILE *hfp;
 char buf[MAXPATHLEN];
 int rval = 0;
 char *cp, *sp;

 if ((hfp = fopen(fname, "r")) == ((void*)0)) {
  warn("%s", fname);
  return -1;
 }

 while (fgets(buf, sizeof(buf), hfp)) {
  cp = buf;
  while (isspace(*cp))
   cp++;
  if (*cp == '#' || *cp == '\0')
   continue;
  sp = cp;
  while (!isspace(*cp) && *cp != '\0')
   cp++;

  if (*cp != '\n') {
   *cp = '\0';
   warnx("%s: trailing characters ignored", sp);
  }

  *cp = '\0';

  rval |= dodir(sp, silent);
 }

 (void)fclose(hfp);
 return rval;
}
