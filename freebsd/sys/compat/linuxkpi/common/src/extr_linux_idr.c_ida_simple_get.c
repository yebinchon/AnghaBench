
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;
typedef int gfp_t ;


 int EAGAIN ;
 int ENOMEM ;
 int ENOSPC ;
 int MPASS (int) ;
 scalar_t__ __predict_false (int) ;
 int ida_get_new_above (struct ida*,unsigned int,int*) ;
 int ida_pre_get (struct ida*,int ) ;
 int ida_remove (struct ida*,int) ;

int
ida_simple_get(struct ida *ida, unsigned int start, unsigned int end,
    gfp_t flags)
{
 int ret, id;
 unsigned int max;

 MPASS((int)start >= 0);
 MPASS((int)end >= 0);

 if (end == 0)
  max = 0x80000000;
 else {
  MPASS(end > start);
  max = end - 1;
 }
again:
 if (!ida_pre_get(ida, flags))
  return (-ENOMEM);

 if ((ret = ida_get_new_above(ida, start, &id)) == 0) {
  if (id > max) {
   ida_remove(ida, id);
   ret = -ENOSPC;
  } else {
   ret = id;
  }
 }
 if (__predict_false(ret == -EAGAIN))
  goto again;

 return (ret);
}
