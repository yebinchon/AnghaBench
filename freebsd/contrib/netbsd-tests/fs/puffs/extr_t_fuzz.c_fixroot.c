
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_kargs {int pa_root_vtype; } ;


 int VBAD ;

__attribute__((used)) static void
fixroot(struct puffs_kargs *kargs)
{

 kargs->pa_root_vtype %= VBAD;
}
