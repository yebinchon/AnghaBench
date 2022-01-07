
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_atime; scalar_t__ st_mtime; } ;
struct dirent {scalar_t__ d_ino; char* d_name; } ;
typedef int path ;
typedef int DIR ;


 int MAXPATHLEN ;
 int MODEMASK ;
 int closedir (int *) ;
 int errno ;
 int * opendir (char*) ;
 scalar_t__ pflag ;
 struct dirent* readdir (int *) ;
 int remout ;
 scalar_t__ response () ;
 int run_err (char*,char*,char*) ;
 int snprintf (char*,int,char*,...) ;
 int source (int,char**) ;
 int strcmp (char*,char*) ;
 char* strerror (int ) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int write (int ,char*,int) ;

void
rsource(char *name, struct stat *statp)
{
 DIR *dirp;
 struct dirent *dp;
 char *last, *vect[1], path[MAXPATHLEN];

 if (!(dirp = opendir(name))) {
  run_err("%s: %s", name, strerror(errno));
  return;
 }
 last = strrchr(name, '/');
 if (last == 0)
  last = name;
 else
  last++;
 if (pflag) {
  snprintf(path, sizeof(path), "T%ld 0 %ld 0\n",
      (long)statp->st_mtime,
      (long)statp->st_atime);
  write(remout, path, strlen(path));
  if (response() < 0) {
   closedir(dirp);
   return;
  }
 }
 snprintf(path, sizeof(path),
   "D%04o %d %s\n",
   (unsigned int)(statp->st_mode & MODEMASK), 0, last);
 write(remout, path, strlen(path));
 if (response() < 0) {
  closedir(dirp);
  return;
 }
 while ((dp = readdir(dirp)) != ((void*)0)) {
  if (dp->d_ino == 0)
   continue;
  if (!strcmp(dp->d_name, ".") || !strcmp(dp->d_name, ".."))
   continue;
  if (strlen(name) + 1 + strlen(dp->d_name) >= MAXPATHLEN - 1) {
   run_err("%s/%s: name too long", name, dp->d_name);
   continue;
  }
  snprintf(path, sizeof(path), "%s/%s", name, dp->d_name);
  vect[0] = path;
  source(1, vect);
 }
 closedir(dirp);
 write(remout, "E\n", 2);
 response();
}
