
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_power_throttle_rfield_t {int present; int pos; int len; } ;


 size_t CVMX_PTH_INDEX_HRMPOWADJ ;
 int CVMX_PTH_INDEX_MAX ;
 size_t CVMX_PTH_INDEX_OVRRD ;
 size_t CVMX_PTH_INDEX_RESERVED ;
 int OCTEON_CN63XX ;
 int OCTEON_CN6XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 struct cvmx_power_throttle_rfield_t* cvmx_power_throttle_rfield ;

__attribute__((used)) static void cvmx_power_throttle_init(void)
{



    if (OCTEON_IS_MODEL(OCTEON_CN6XXX))
    {
        int i;
 struct cvmx_power_throttle_rfield_t *p;

        for (i = 0; i < CVMX_PTH_INDEX_MAX; i++)
     cvmx_power_throttle_rfield[i].present = 1;

        if (OCTEON_IS_MODEL(OCTEON_CN63XX))
 {



     p = &cvmx_power_throttle_rfield[CVMX_PTH_INDEX_HRMPOWADJ];
     p->present = 0;
     p = &cvmx_power_throttle_rfield[CVMX_PTH_INDEX_OVRRD];
     p->present = 0;
 }
 else
 {



     p = &cvmx_power_throttle_rfield[CVMX_PTH_INDEX_RESERVED];
     p->pos = 29;
     p->len = 3;
 }
    }
}
