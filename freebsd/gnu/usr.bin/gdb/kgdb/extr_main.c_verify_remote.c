
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int path ;


 int PATH_MAX ;
 int S_ISCHR (int ) ;
 int S_ISFIFO (int ) ;
 int errx (int,char*,char*) ;
 int free (char*) ;
 char* remote ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strdup (char*) ;

__attribute__((used)) static void
verify_remote(void)
{
 char path[PATH_MAX];
 struct stat st;

 if (stat(remote, &st) != 0) {
  snprintf(path, sizeof(path), "/dev/%s", remote);
  if (stat(path, &st) != 0)
   return;
  free(remote);
  remote = strdup(path);
 }
 if (!S_ISCHR(st.st_mode) && !S_ISFIFO(st.st_mode))
  errx(1, "%s: not a special file, FIFO or socket", remote);
}
