
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int errno ;
 scalar_t__ initialized ;
 int lockfd ;
 char* tempname ;
 int unlink (char*) ;

void
gr_fini(void)
{
 int serrno;

 if (!initialized)
  return;
 initialized = 0;
 serrno = errno;
 if (*tempname != '\0') {
  unlink(tempname);
  *tempname = '\0';
 }
 if (lockfd != -1)
  close(lockfd);
 errno = serrno;
}
