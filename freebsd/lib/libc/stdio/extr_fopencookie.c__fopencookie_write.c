
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* write ) (int ,char const*,size_t) ;} ;
struct fopencookie_thunk {int foc_cookie; TYPE_1__ foc_io; } ;


 scalar_t__ stub1 (int ,char const*,size_t) ;

__attribute__((used)) static int
_fopencookie_write(void *cookie, const char *buf, int size)
{
 struct fopencookie_thunk *thunk;

 thunk = cookie;


 if (thunk->foc_io.write == ((void*)0))
  return (size);

 return ((int)thunk->foc_io.write(thunk->foc_cookie, buf,
  (size_t)size));
}
