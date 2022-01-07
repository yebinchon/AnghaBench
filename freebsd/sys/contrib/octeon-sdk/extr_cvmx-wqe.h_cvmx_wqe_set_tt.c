
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ zero_2; void* tag_type; } ;
struct TYPE_6__ {scalar_t__ zero_2; void* tag_type; } ;
struct TYPE_7__ {TYPE_3__ cn38xx; TYPE_1__ cn68xx; } ;
struct TYPE_9__ {TYPE_2__ word1; } ;
typedef TYPE_4__ cvmx_wqe_t ;
typedef void* cvmx_pow_tag_type_t ;


 int OCTEON_FEATURE_CN68XX_WQE ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static inline void cvmx_wqe_set_tt(cvmx_wqe_t *work, int tt)
{
    if (octeon_has_feature(OCTEON_FEATURE_CN68XX_WQE))
    {
 work->word1.cn68xx.tag_type = (cvmx_pow_tag_type_t)tt;
        work->word1.cn68xx.zero_2 = 0;
    }
    else
    {
 work->word1.cn38xx.tag_type = (cvmx_pow_tag_type_t)tt;
        work->word1.cn38xx.zero_2 = 0;
    }
}
