
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int grp; } ;
struct TYPE_6__ {int grp; } ;
struct TYPE_8__ {TYPE_2__ cn38xx; TYPE_1__ cn68xx; } ;
struct TYPE_9__ {TYPE_3__ word1; } ;
typedef TYPE_4__ cvmx_wqe_t ;


 int OCTEON_FEATURE_CN68XX_WQE ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static inline int cvmx_wqe_get_grp(cvmx_wqe_t *work)
{
    int grp;

    if (octeon_has_feature(OCTEON_FEATURE_CN68XX_WQE))
 grp = work->word1.cn68xx.grp;
    else
 grp = work->word1.cn38xx.grp;

    return grp;
}
