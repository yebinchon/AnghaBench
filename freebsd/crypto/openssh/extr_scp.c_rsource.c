
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct stat {int st_mode; } ;
struct dirent {scalar_t__ d_ino; char* d_name; } ;
typedef int path ;
typedef int DIR ;


 int FILEMODEMASK ;
 int PATH_MAX ;
 int atomicio (int ,int ,char*,int) ;
 int closedir (int *) ;
 scalar_t__ do_times (int ,scalar_t__,struct stat*) ;
 int errno ;
 int fmprintf (int ,char*,char*) ;
 int * opendir (char*) ;
 scalar_t__ pflag ;
 struct dirent* readdir (int *) ;
 int remout ;
 scalar_t__ response () ;
 int run_err (char*,char*,char*) ;
 int snprintf (char*,int,char*,...) ;
 int source (int,char**) ;
 int stderr ;
 int strcmp (char*,char*) ;
 char* strerror (int ) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ verbose_mode ;
 int vwrite ;

void
rsource(char *name, struct stat *statp)
{
 DIR *dirp;
 struct dirent *dp;
 char *last, *vect[1], path[PATH_MAX];

 if (!(dirp = opendir(name))) {
  run_err("%s: %s", name, strerror(errno));
  return;
 }
 last = strrchr(name, '/');
 if (last == ((void*)0))
  last = name;
 else
  last++;
 if (pflag) {
  if (do_times(remout, verbose_mode, statp) < 0) {
   closedir(dirp);
   return;
  }
 }
 (void) snprintf(path, sizeof path, "D%04o %d %.1024s\n",
     (u_int) (statp->st_mode & FILEMODEMASK), 0, last);
 if (verbose_mode)
  fmprintf(stderr, "Entering directory: %s", path);
 (void) atomicio(vwrite, remout, path, strlen(path));
 if (response() < 0) {
  closedir(dirp);
  return;
 }
 while ((dp = readdir(dirp)) != ((void*)0)) {
  if (dp->d_ino == 0)
   continue;
  if (!strcmp(dp->d_name, ".") || !strcmp(dp->d_name, ".."))
   continue;
  if (strlen(name) + 1 + strlen(dp->d_name) >= sizeof(path) - 1) {
   run_err("%s/%s: name too long", name, dp->d_name);
   continue;
  }
  (void) snprintf(path, sizeof path, "%s/%s", name, dp->d_name);
  vect[0] = path;
  source(1, vect);
 }
 (void) closedir(dirp);
 (void) atomicio(vwrite, remout, "E\n", 2);
 (void) response();
}
