
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_kargs {int dummy; } ;


 int unfixputter (struct puffs_kargs*) ;

__attribute__((used)) static void
unfixup(int nfix, struct puffs_kargs *kargs)
{

 if (nfix >= 7)
  unfixputter(kargs);
}
