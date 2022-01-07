
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 int MAXPATHLEN ;
 int NS_SUCCESS ;
 int NS_UNAVAIL ;
 int _PATH_SHELLS ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int isspace (char) ;
 scalar_t__ sl ;
 int sl_add (scalar_t__,int ) ;
 int sl_free (scalar_t__,int) ;
 scalar_t__ sl_init () ;
 int strdup (char*) ;

__attribute__((used)) static int
_local_initshells(void *rv, void *cb_data, va_list ap)
{
 char *sp, *cp;
 FILE *fp;
 char line[MAXPATHLEN + 2];

 if (sl)
  sl_free(sl, 1);
 sl = sl_init();

 if ((fp = fopen(_PATH_SHELLS, "re")) == ((void*)0))
  return NS_UNAVAIL;

 while (fgets(line, MAXPATHLEN + 1, fp) != ((void*)0)) {
  cp = line;
  while (*cp != '#' && *cp != '/' && *cp != '\0')
   cp++;
  if (*cp == '#' || *cp == '\0')
   continue;
  sp = cp;
  while (!isspace(*cp) && *cp != '#' && *cp != '\0')
   cp++;
  *cp = '\0';
  sl_add(sl, strdup(sp));
 }
 (void)fclose(fp);
 return NS_SUCCESS;
}
