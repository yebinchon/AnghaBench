
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int O_APPEND ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_VERIFY ;
 int O_WRONLY ;
 int __SRD ;
 int __SRW ;
 int __SWR ;
 int errno ;

int
__sflags(const char *mode, int *optr)
{
 int ret, m, o, known;

 switch (*mode++) {

 case 'r':
  ret = __SRD;
  m = O_RDONLY;
  o = 0;
  break;

 case 'w':
  ret = __SWR;
  m = O_WRONLY;
  o = O_CREAT | O_TRUNC;
  break;

 case 'a':
  ret = __SWR;
  m = O_WRONLY;
  o = O_CREAT | O_APPEND;
  break;

 default:
  errno = EINVAL;
  return (0);
 }

 do {
  known = 1;
  switch (*mode++) {
  case 'b':

   break;
  case '+':

   ret = __SRW;
   m = O_RDWR;
   break;
  case 'x':

   o |= O_EXCL;
   break;
  case 'e':

   o |= O_CLOEXEC;
   break;
  case 'v':

   o |= O_VERIFY;
   break;
  default:
   known = 0;
   break;
  }
 } while (known);

 if ((o & O_EXCL) != 0 && m == O_RDONLY) {
  errno = EINVAL;
  return (0);
 }

 *optr = m | o;
 return (ret);
}
