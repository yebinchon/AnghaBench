
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tag_type; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct TYPE_7__ {TYPE_2__ word1; } ;
typedef TYPE_3__ cvmx_wqe_t ;



__attribute__((used)) static inline int cvmx_wqe_get_tt(cvmx_wqe_t *work)
{
    return work->word1.s.tag_type;
}
