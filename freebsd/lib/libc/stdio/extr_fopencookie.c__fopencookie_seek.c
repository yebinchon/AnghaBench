
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* seek ) (int ,scalar_t__*,int) ;} ;
struct fopencookie_thunk {int foc_cookie; TYPE_1__ foc_io; } ;
typedef scalar_t__ off64_t ;
typedef int fpos_t ;


 int EINVAL ;
 int ENOTSUP ;



 int errno ;
 int stub1 (int ,scalar_t__*,int) ;

__attribute__((used)) static fpos_t
_fopencookie_seek(void *cookie, fpos_t offset, int whence)
{
 struct fopencookie_thunk *thunk;
 off64_t off64;
 int res;

 switch (whence) {
 case 128:
 case 130:
 case 129:
  break;
 default:

  errno = EINVAL;
  return (-1);
 }

 thunk = cookie;





 if (thunk->foc_io.seek == ((void*)0)) {
  errno = ENOTSUP;
  return (-1);
 }

 off64 = (off64_t)offset;
 res = thunk->foc_io.seek(thunk->foc_cookie, &off64, whence);
 if (res < 0)
  return (res);

 return ((fpos_t)off64);
}
