
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {void* rlim_cur; void* rlim_max; } ;





 void* linux32_maxdsiz ;
 void* linux32_maxssiz ;
 void* linux32_maxvmem ;

__attribute__((used)) static void
linux32_fixlimit(struct rlimit *rl, int which)
{

 switch (which) {
 case 130:
  if (linux32_maxdsiz != 0) {
   if (rl->rlim_cur > linux32_maxdsiz)
    rl->rlim_cur = linux32_maxdsiz;
   if (rl->rlim_max > linux32_maxdsiz)
    rl->rlim_max = linux32_maxdsiz;
  }
  break;
 case 129:
  if (linux32_maxssiz != 0) {
   if (rl->rlim_cur > linux32_maxssiz)
    rl->rlim_cur = linux32_maxssiz;
   if (rl->rlim_max > linux32_maxssiz)
    rl->rlim_max = linux32_maxssiz;
  }
  break;
 case 128:
  if (linux32_maxvmem != 0) {
   if (rl->rlim_cur > linux32_maxvmem)
    rl->rlim_cur = linux32_maxvmem;
   if (rl->rlim_max > linux32_maxvmem)
    rl->rlim_max = linux32_maxvmem;
  }
  break;
 }
}
