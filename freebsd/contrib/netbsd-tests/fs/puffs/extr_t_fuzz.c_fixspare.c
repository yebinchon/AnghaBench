
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_kargs {int pa_spare; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void
fixspare(struct puffs_kargs *kargs)
{

 memset(&kargs->pa_spare, 0, sizeof(kargs->pa_spare));
}
