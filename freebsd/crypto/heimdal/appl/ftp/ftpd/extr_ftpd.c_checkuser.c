
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int BUFSIZ ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
checkuser(char *fname, char *name)
{
 FILE *fd;
 int found = 0;
 char *p, line[BUFSIZ];

 if ((fd = fopen(fname, "r")) != ((void*)0)) {
  while (fgets(line, sizeof(line), fd) != ((void*)0))
   if ((p = strchr(line, '\n')) != ((void*)0)) {
    *p = '\0';
    if (line[0] == '#')
     continue;
    if (strcmp(line, name) == 0) {
     found = 1;
     break;
    }
   }
  fclose(fd);
 }
 return (found);
}
