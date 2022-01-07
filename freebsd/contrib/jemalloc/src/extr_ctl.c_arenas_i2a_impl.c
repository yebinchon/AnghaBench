
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t narenas; } ;




 unsigned int UINT_MAX ;
 int assert (int) ;
 TYPE_1__* ctl_arenas ;

__attribute__((used)) static unsigned
arenas_i2a_impl(size_t i, bool compat, bool validate) {
 unsigned a;

 switch (i) {
 case 129:
  a = 0;
  break;
 case 128:
  a = 1;
  break;
 default:
  if (compat && i == ctl_arenas->narenas) {






   a = 0;
  } else if (validate && i >= ctl_arenas->narenas) {
   a = UINT_MAX;
  } else {





   assert(i < ctl_arenas->narenas || (!validate && i ==
       ctl_arenas->narenas));
   a = (unsigned)i + 2;
  }
  break;
 }

 return a;
}
