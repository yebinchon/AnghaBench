
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* close ) (int ) ;} ;
struct fopencookie_thunk {int foc_cookie; TYPE_1__ foc_io; } ;


 int errno ;
 int free (struct fopencookie_thunk*) ;
 int stub1 (int ) ;

__attribute__((used)) static int
_fopencookie_close(void *cookie)
{
 struct fopencookie_thunk *thunk;
 int ret, serrno;

 ret = 0;
 thunk = cookie;
 if (thunk->foc_io.close != ((void*)0))
  ret = thunk->foc_io.close(thunk->foc_cookie);

 serrno = errno;
 free(thunk);
 errno = serrno;
 return (ret);
}
