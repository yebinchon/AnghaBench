
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmemopen_cookie {int size; int off; int len; } ;
typedef int fpos_t ;


 int EINVAL ;



 int errno ;

__attribute__((used)) static fpos_t
fmemopen_seek(void *cookie, fpos_t offset, int whence)
{
 struct fmemopen_cookie *ck = cookie;


 switch (whence) {
 case 128:
  if (offset > ck->size) {
   errno = EINVAL;
   return (-1);
  }
  ck->off = offset;
  break;

 case 130:
  if (ck->off + offset > ck->size) {
   errno = EINVAL;
   return (-1);
  }
  ck->off += offset;
  break;

 case 129:
  if (offset > 0 || -offset > ck->len) {
   errno = EINVAL;
   return (-1);
  }
  ck->off = ck->len + offset;
  break;

 default:
  errno = EINVAL;
  return (-1);
 }

 return (ck->off);
}
