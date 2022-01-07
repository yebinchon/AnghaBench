
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 scalar_t__ EXYNOS5420_SOC_ID ;
 scalar_t__ exynos_get_soc_id () ;
 int mp_maxid ;
 int mp_ncpus ;

void
exynos5_mp_setmaxid(platform_t plat)
{

 if (exynos_get_soc_id() == EXYNOS5420_SOC_ID)
  mp_ncpus = 4;
 else
  mp_ncpus = 2;

 mp_maxid = mp_ncpus - 1;
}
