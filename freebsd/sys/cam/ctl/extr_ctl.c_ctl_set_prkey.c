
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t uint32_t ;
struct ctl_lun {int ** pr_keys; } ;


 size_t CTL_MAX_INIT_PER_PORT ;
 int KASSERT (int ,char*) ;

__attribute__((used)) static void
ctl_set_prkey(struct ctl_lun *lun, uint32_t residx, uint64_t key)
{
 uint64_t *t;

 t = lun->pr_keys[residx/CTL_MAX_INIT_PER_PORT];
 KASSERT(t != ((void*)0), ("prkey %d is not allocated", residx));
 t[residx % CTL_MAX_INIT_PER_PORT] = key;
}
