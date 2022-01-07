
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int dummy; } ;
typedef scalar_t__ pid_t ;


 scalar_t__ EEXIST ;
 int SIGHUP ;
 int _PATH_MOUNTDPID ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int kill (scalar_t__,int ) ;
 struct pidfh* pidfile_open (int ,int,scalar_t__*) ;
 int pidfile_remove (struct pidfh*) ;
 int warnx (char*,scalar_t__) ;

__attribute__((used)) static void
restart_mountd(void)
{
 struct pidfh *pfh;
 pid_t mountdpid;

 mountdpid = 0;
 pfh = pidfile_open(_PATH_MOUNTDPID, 0600, &mountdpid);
 if (pfh != ((void*)0)) {

  pidfile_remove(pfh);
  return;
 }
 if (errno != EEXIST) {

  return;
 }





 if (mountdpid <= 0) {
  warnx("mountd pid %d, refusing to send SIGHUP", mountdpid);
  return;
 }


 if (kill(mountdpid, SIGHUP) == -1)
  err(1, "signal mountd");
}
