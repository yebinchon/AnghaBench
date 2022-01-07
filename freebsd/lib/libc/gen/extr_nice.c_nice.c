
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int EPERM ;
 int PRIO_PROCESS ;
 int errno ;
 int getpriority (int ,int ) ;
 int setpriority (int ,int ,int) ;

int
nice(int incr)
{
 int saverrno, prio;

 saverrno = errno;
 errno = 0;
 prio = getpriority(PRIO_PROCESS, 0);
 if (prio == -1 && errno != 0)
  return (-1);
 if (setpriority(PRIO_PROCESS, 0, prio + incr) == -1) {
  if (errno == EACCES)
   errno = EPERM;
  return (-1);
 }
 errno = saverrno;
 return (0);
}
