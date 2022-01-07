
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* vl_by_sl_num; } ;
typedef TYPE_1__ ib_slvl_table_t ;



__attribute__((used)) static inline void ib_slvl_get_i(ib_slvl_table_t * tbl, int i, uint8_t * vl)
{
 *vl = (tbl->vl_by_sl_num[i >> 1] >> ((!(i & 1)) << 2)) & 0xf;
}
