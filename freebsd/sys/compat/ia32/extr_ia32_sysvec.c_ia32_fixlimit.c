
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {void* rlim_cur; void* rlim_max; } ;





 void* ia32_maxdsiz ;
 void* ia32_maxssiz ;
 void* ia32_maxvmem ;

void
ia32_fixlimit(struct rlimit *rl, int which)
{

 switch (which) {
 case 130:
  if (ia32_maxdsiz != 0) {
   if (rl->rlim_cur > ia32_maxdsiz)
    rl->rlim_cur = ia32_maxdsiz;
   if (rl->rlim_max > ia32_maxdsiz)
    rl->rlim_max = ia32_maxdsiz;
  }
  break;
 case 129:
  if (ia32_maxssiz != 0) {
   if (rl->rlim_cur > ia32_maxssiz)
    rl->rlim_cur = ia32_maxssiz;
   if (rl->rlim_max > ia32_maxssiz)
    rl->rlim_max = ia32_maxssiz;
  }
  break;
 case 128:
  if (ia32_maxvmem != 0) {
   if (rl->rlim_cur > ia32_maxvmem)
    rl->rlim_cur = ia32_maxvmem;
   if (rl->rlim_max > ia32_maxvmem)
    rl->rlim_max = ia32_maxvmem;
  }
  break;
 }
}
