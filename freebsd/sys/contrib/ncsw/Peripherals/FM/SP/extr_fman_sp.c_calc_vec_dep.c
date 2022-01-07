
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_ext_pools {int num_pools_used; TYPE_1__* ext_buf_pool; } ;
struct TYPE_2__ {int id; } ;



__attribute__((used)) static inline uint32_t calc_vec_dep(int max_pools, bool *pools,
        struct fman_ext_pools *ext_buf_pools, uint32_t mask)
{
    int i, j;
    uint32_t vector = 0;
    for (i = 0; i < max_pools; i++)
        if (pools[i])
            for (j = 0; j < ext_buf_pools->num_pools_used; j++)
                if (i == ext_buf_pools->ext_buf_pool[j].id) {
                    vector |= mask >> j;
                    break;
                }
    return vector;
}
