
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ren ;


 scalar_t__ EEXIST ;
 scalar_t__ EINTR ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int O_CREAT ;
 int O_EXCL ;
 int PATH_MAX ;
 int arc4random () ;
 int close (int) ;
 scalar_t__ errno ;
 int logmsg (int ,char*,...) ;
 int open (char*,int,int ) ;
 scalar_t__ rename (char const*,char*) ;
 int snprintf (char*,int,char*,char const*,int) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int
move_log(const char *name)
{
 char ren[PATH_MAX];
 int len;

 for (;;) {
  int fd;

  len = snprintf(ren, sizeof(ren), "%s.bad.%08x",
      name, arc4random());
  if (len >= sizeof(ren)) {
   logmsg(LOG_ERR, "[priv] new name too long");
   return (1);
  }


  fd = open(ren, O_CREAT|O_EXCL, 0);
  if (fd >= 0) {
   close(fd);
   break;
  }

  if (errno != EEXIST && errno != EINTR) {
   logmsg(LOG_ERR, "[priv] failed to create new name: %s",
       strerror(errno));
   return (1);
  }
 }

 if (rename(name, ren)) {
  logmsg(LOG_ERR, "[priv] failed to rename %s to %s: %s",
      name, ren, strerror(errno));
  return (1);
 }

 logmsg(LOG_NOTICE,
        "[priv]: log file %s moved to %s", name, ren);

 return (0);
}
