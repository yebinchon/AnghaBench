
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res_state ;



int
res_ninit(res_state statp) {
 extern int __res_vinit(res_state, int);

 return (__res_vinit(statp, 0));
}
