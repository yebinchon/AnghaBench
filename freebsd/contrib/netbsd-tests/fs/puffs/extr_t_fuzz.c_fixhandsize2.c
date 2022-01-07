
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_kargs {int pa_fhflags; int pa_fhsize; } ;


 int PUFFS_FHFLAG_NFSV2 ;
 int PUFFS_FHFLAG_NFSV3 ;

__attribute__((used)) static void
fixhandsize2(struct puffs_kargs *kargs)
{


 if (kargs->pa_fhflags & PUFFS_FHFLAG_NFSV3)
  kargs->pa_fhsize %= 60;
 if (kargs->pa_fhflags & PUFFS_FHFLAG_NFSV2)
  kargs->pa_fhsize %= 28;
}
