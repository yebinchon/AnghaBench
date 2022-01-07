
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int mode_t ;
typedef int gid_t ;


 scalar_t__ chmod (char const*,int ) ;
 scalar_t__ chown (char const*,int ,int ) ;
 int errno ;
 int error (char*,char const*,char*) ;
 char* strerror (int ) ;

void
pty_release(const char *tty)
{

 if (chown(tty, (uid_t) 0, (gid_t) 0) < 0)
  error("chown %.100s 0 0 failed: %.100s", tty, strerror(errno));
 if (chmod(tty, (mode_t) 0666) < 0)
  error("chmod %.100s 0666 failed: %.100s", tty, strerror(errno));

}
