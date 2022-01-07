
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int write (int,void const*,size_t) ;

__attribute__((used)) static ssize_t
xwrite(int fd, const void *vp, size_t n)
{
 size_t left;

 left = n;
 do {
  ssize_t ssz;

  ssz = write(fd, vp, left);
  if (ssz == -1) {
   return ssz;
  }
  left -= ssz;
  vp = (const char *)vp + ssz;
 } while (left > 0);
 return n;
}
