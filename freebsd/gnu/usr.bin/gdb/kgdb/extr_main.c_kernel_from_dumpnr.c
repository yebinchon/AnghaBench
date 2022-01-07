
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int path ;
typedef int FILE ;


 int PATH_MAX ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 char* crashdir ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int kernel ;
 int snprintf (char*,int,char*,char*,...) ;
 int stat (char*,struct stat*) ;
 char* strchr (char*,char) ;
 int strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int warn (char*,char*) ;

__attribute__((used)) static void
kernel_from_dumpnr(int nr)
{
 char path[PATH_MAX];
 FILE *info;
 char *s;
 struct stat st;
 int l;







 snprintf(path, sizeof(path), "%s/kernel.%d", crashdir, nr);
 if (stat(path, &st) == 0) {
  if (S_ISREG(st.st_mode)) {
   kernel = strdup(path);
   return;
  }
  if (S_ISDIR(st.st_mode)) {
   snprintf(path, sizeof(path), "%s/kernel.%d/kernel",
       crashdir, nr);
   if (stat(path, &st) == 0 && S_ISREG(st.st_mode)) {
    kernel = strdup(path);
    return;
   }
  }
 }
 snprintf(path, sizeof(path), "%s/info.%d", crashdir, nr);
 info = fopen(path, "r");
 if (info == ((void*)0)) {
  warn("%s", path);
  return;
 }
 while (fgets(path, sizeof(path), info) != ((void*)0)) {
  l = strlen(path);
  if (l > 0 && path[l - 1] == '\n')
   path[--l] = '\0';
  if (strncmp(path, "    ", 4) == 0) {
   s = strchr(path, ':');
   s = (s == ((void*)0)) ? path + 4 : s + 1;
   l = snprintf(path, sizeof(path), "%s/kernel.debug", s);
   if (stat(path, &st) == -1 || !S_ISREG(st.st_mode)) {
    path[l - 6] = '\0';
    if (stat(path, &st) == -1 ||
        !S_ISREG(st.st_mode))
     break;
   }
   kernel = strdup(path);
   break;
  }
 }
 fclose(info);
}
