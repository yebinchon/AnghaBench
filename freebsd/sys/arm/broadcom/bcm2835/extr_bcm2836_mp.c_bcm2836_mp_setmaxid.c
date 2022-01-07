
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int DPRINTF (char*,...) ;
 int mp_maxid ;
 int mp_ncpus ;

void
bcm2836_mp_setmaxid(platform_t plat)
{

 DPRINTF("platform_mp_setmaxid\n");
 if (mp_ncpus != 0)
  return;

 mp_ncpus = 4;
 mp_maxid = mp_ncpus - 1;
 DPRINTF("mp_maxid=%d\n", mp_maxid);
}
