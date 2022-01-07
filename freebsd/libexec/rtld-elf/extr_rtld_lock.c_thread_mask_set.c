
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* thread_set_flag ) (int) ;} ;


 TYPE_1__ lockinfo ;
 int stub1 (int) ;

__attribute__((used)) static __inline int
thread_mask_set(int mask)
{
 return lockinfo.thread_set_flag(mask);
}
