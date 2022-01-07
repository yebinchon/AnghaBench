
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_kargs {int pa_fhflags; } ;


 int PUFFS_FHFLAG_MASK ;

__attribute__((used)) static void
fixfhflag(struct puffs_kargs *kargs)
{

 kargs->pa_fhflags &= PUFFS_FHFLAG_MASK;
}
