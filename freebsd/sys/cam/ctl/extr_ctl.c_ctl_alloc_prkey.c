
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef size_t u_int ;
struct ctl_lun {int ** pr_keys; int lun_lock; } ;


 int CTL_MAX_INIT_PER_PORT ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (int *,int ) ;
 int * malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ctl_alloc_prkey(struct ctl_lun *lun, uint32_t residx)
{
 uint64_t *p;
 u_int i;

 i = residx/CTL_MAX_INIT_PER_PORT;
 if (lun->pr_keys[i] != ((void*)0))
  return;
 mtx_unlock(&lun->lun_lock);
 p = malloc(sizeof(uint64_t) * CTL_MAX_INIT_PER_PORT, M_CTL,
     M_WAITOK | M_ZERO);
 mtx_lock(&lun->lun_lock);
 if (lun->pr_keys[i] == ((void*)0))
  lun->pr_keys[i] = p;
 else
  free(p, M_CTL);
}
