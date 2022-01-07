
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int RL (int ) ;
 int activity_stop ;
 int makefile (char*) ;
 int rump_pub_lwproc_newlwp (int ) ;
 int rump_pub_lwproc_releaselwp () ;
 int rump_sys_mkdir (char*,int) ;
 int rump_sys_rmdir (char*) ;
 int rump_sys_unlink (char*) ;
 int snprintf (char*,int,char*,char*,int,...) ;
 int wrkpid ;

__attribute__((used)) static void *
fs_activity(void *arg)
{
 int di, fi;
 char *prefix = arg, path[128];

 rump_pub_lwproc_newlwp(wrkpid);

 RL(rump_sys_mkdir(prefix, 0777));
 while (! activity_stop) {
  for (di = 0; di < 5; di++) {
   snprintf(path, sizeof(path), "%s/d%d", prefix, di);
   RL(rump_sys_mkdir(path, 0777));
   for (fi = 0; fi < 5; fi++) {
    snprintf(path, sizeof(path), "%s/d%d/f%d",
        prefix, di, fi);
    makefile(path);
   }
  }
  for (di = 0; di < 5; di++) {
   for (fi = 0; fi < 5; fi++) {
    snprintf(path, sizeof(path), "%s/d%d/f%d",
        prefix, di, fi);
    RL(rump_sys_unlink(path));
   }
   snprintf(path, sizeof(path), "%s/d%d", prefix, di);
   RL(rump_sys_rmdir(path));
  }
 }
 RL(rump_sys_rmdir(prefix));

 rump_pub_lwproc_releaselwp();

 return ((void*)0);
}
