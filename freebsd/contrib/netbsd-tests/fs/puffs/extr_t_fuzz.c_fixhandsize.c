
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_kargs {int pa_fhsize; } ;


 int PUFFS_FHSIZE_MAX ;

__attribute__((used)) static void
fixhandsize(struct puffs_kargs *kargs)
{

 kargs->pa_fhsize %= PUFFS_FHSIZE_MAX+4;
}
