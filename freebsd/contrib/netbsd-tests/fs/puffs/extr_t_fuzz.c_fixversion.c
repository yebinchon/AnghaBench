
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_kargs {int pa_vers; } ;


 int PUFFSVERSION ;

__attribute__((used)) static void
fixversion(struct puffs_kargs *kargs)
{

 kargs->pa_vers = PUFFSVERSION;
}
