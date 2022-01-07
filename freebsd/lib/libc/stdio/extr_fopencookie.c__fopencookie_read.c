
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* read ) (int ,char*,size_t) ;} ;
struct fopencookie_thunk {int foc_cookie; TYPE_1__ foc_io; } ;


 scalar_t__ stub1 (int ,char*,size_t) ;

__attribute__((used)) static int
_fopencookie_read(void *cookie, char *buf, int size)
{
 struct fopencookie_thunk *thunk;

 thunk = cookie;


 if (thunk->foc_io.read == ((void*)0))
  return (0);

 return ((int)thunk->foc_io.read(thunk->foc_cookie, buf, (size_t)size));
}
