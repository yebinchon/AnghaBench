
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* thread_clr_flag ) (int) ;} ;


 TYPE_1__ lockinfo ;
 int stub1 (int) ;

__attribute__((used)) static __inline void
thread_mask_clear(int mask)
{
 lockinfo.thread_clr_flag(mask);
}
