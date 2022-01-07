
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t uint32_t ;
struct ctl_lun {int ** pr_keys; } ;


 size_t CTL_MAX_INIT_PER_PORT ;

__attribute__((used)) static uint64_t
ctl_get_prkey(struct ctl_lun *lun, uint32_t residx)
{
 uint64_t *t;

 t = lun->pr_keys[residx/CTL_MAX_INIT_PER_PORT];
 if (t == ((void*)0))
  return (0);
 return (t[residx % CTL_MAX_INIT_PER_PORT]);
}
