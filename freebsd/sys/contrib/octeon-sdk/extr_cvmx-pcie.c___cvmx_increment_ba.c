
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ba; } ;
struct TYPE_5__ {int ba; } ;
struct TYPE_7__ {TYPE_2__ cn63xx; TYPE_1__ cn68xx; } ;
typedef TYPE_3__ cvmx_sli_mem_access_subidx_t ;


 int OCTEON_CN68XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;

__attribute__((used)) static inline void __cvmx_increment_ba(cvmx_sli_mem_access_subidx_t *pmas)
{
    if (OCTEON_IS_MODEL(OCTEON_CN68XX))
        pmas->cn68xx.ba++;
    else
        pmas->cn63xx.ba++;
}
