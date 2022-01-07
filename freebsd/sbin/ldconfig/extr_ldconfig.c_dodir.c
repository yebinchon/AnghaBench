
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int dewey ;
typedef int caddr_t ;
typedef int DIR ;


 scalar_t__ ENOENT ;
 int MAXDEWEY ;
 int MAXPATHLEN ;
 int bzero (int ,int) ;
 int closedir (int *) ;
 int enter (char*,char*,char*,int*,int) ;
 scalar_t__ errno ;
 int getdewey (int*,char*) ;
 int isdigit (char) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int warn (char*,char*) ;

int
dodir(char *dir, int silent)
{
 DIR *dd;
 struct dirent *dp;
 char name[MAXPATHLEN];
 int dewey[MAXDEWEY], ndewey;

 if ((dd = opendir(dir)) == ((void*)0)) {
  if (silent && errno == ENOENT)
   return 0;
  warn("%s", dir);
  return -1;
 }

 while ((dp = readdir(dd)) != ((void*)0)) {
  int n;
  char *cp;


  if (dp->d_name[0] != 'l' ||
      dp->d_name[1] != 'i' ||
      dp->d_name[2] != 'b')
   continue;


  (void)strcpy(name, dp->d_name + 3);
  n = strlen(name);
  if (n < 4)
   continue;


  for (cp = name + n - 4; cp > name; --cp) {
   if (cp[0] == '.' &&
       cp[1] == 's' &&
       cp[2] == 'o' &&
       cp[3] == '.')
    break;
  }
  if (cp <= name)
   continue;

  *cp = '\0';
  if (!isdigit(*(cp+4)))
   continue;

  bzero((caddr_t)dewey, sizeof(dewey));
  ndewey = getdewey(dewey, cp + 4);
  if (ndewey < 2)
   continue;
  enter(dir, dp->d_name, name, dewey, ndewey);
 }

 closedir(dd);
 return 0;
}
