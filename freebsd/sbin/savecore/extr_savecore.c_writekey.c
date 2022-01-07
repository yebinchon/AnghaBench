
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ ssize_t ;


 int LOG_ERR ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int logmsg (int ,char*,char const*) ;
 int openat (int,char const*,int,int) ;
 scalar_t__ write (int,int *,scalar_t__) ;

__attribute__((used)) static bool
writekey(int savedirfd, const char *keyname, uint8_t *dumpkey,
    uint32_t dumpkeysize)
{
 int fd;

 fd = openat(savedirfd, keyname, O_WRONLY | O_CREAT | O_TRUNC, 0600);
 if (fd == -1) {
  logmsg(LOG_ERR, "Unable to open %s to write the key: %m.",
      keyname);
  return (0);
 }

 if (write(fd, dumpkey, dumpkeysize) != (ssize_t)dumpkeysize) {
  logmsg(LOG_ERR, "Unable to write the key to %s: %m.", keyname);
  close(fd);
  return (0);
 }

 close(fd);
 return (1);
}
