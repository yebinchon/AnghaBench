
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_kargs {int pa_flags; } ;


 int PUFFS_KFLAG_CACHE_FS_TTL ;
 int PUFFS_KFLAG_MASK ;

__attribute__((used)) static void
fixkflag(struct puffs_kargs *kargs)
{

 kargs->pa_flags &= PUFFS_KFLAG_MASK;





 kargs->pa_flags &= ~PUFFS_KFLAG_CACHE_FS_TTL;
}
