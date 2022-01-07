
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int C_OPTION ;
 int fclose (int *) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 scalar_t__ isspace (char) ;
 int printf (char*,char*) ;
 int * soelim_fopen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
soelim_file(FILE *f, int flag)
{
 char *line = ((void*)0);
 char *walk, *cp;
 size_t linecap = 0;
 ssize_t linelen;

 if (f == ((void*)0))
  return (1);

 while ((linelen = getline(&line, &linecap, f)) > 0) {
  if (strncmp(line, ".so", 3) != 0) {
   printf("%s", line);
   continue;
  }

  walk = line + 3;
  if (!isspace(*walk) && ((flag & C_OPTION) == 0)) {
   printf("%s", line);
   continue;
  }

  while (isspace(*walk))
   walk++;

  cp = walk;
  while (*cp != '\0' && !isspace(*cp))
   cp++;
  *cp = 0;
  if (cp < line + linelen)
   cp++;

  if (*walk == '\0') {
   printf("%s", line);
   continue;
  }
  if (soelim_file(soelim_fopen(walk), flag) == 1) {
   free(line);
   return (1);
  }
  if (*cp != '\0')
   printf("%s", cp);
 }

 free(line);
 fclose(f);

 return (0);
}
