
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int read (int,void*,size_t) ;

__attribute__((used)) static ssize_t
xread(int fd, void *vp, size_t n)
{
 size_t left;

 left = n;
 do {
  ssize_t ssz;

  ssz = read(fd, vp, left);
  if (ssz == -1) {
   return ssz;
  }
  left -= ssz;
  vp = (char *)vp + ssz;
 } while (left > 0);
 return n;
}
