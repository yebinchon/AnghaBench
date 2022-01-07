
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cvmx_power_throttle_rfield_t {int pos; int len; int present; } ;
typedef size_t cvmx_power_throttle_field_index_t ;


 int CVMX_PTH_GET_MASK (int ,int) ;
 size_t CVMX_PTH_INDEX_MAX ;
 int assert (int) ;
 struct cvmx_power_throttle_rfield_t* cvmx_power_throttle_rfield ;

uint64_t cvmx_power_throttle_get_field(uint64_t r,
    cvmx_power_throttle_field_index_t i)
{
    uint64_t m;
    struct cvmx_power_throttle_rfield_t *p;

    assert(i < CVMX_PTH_INDEX_MAX);
    p = &cvmx_power_throttle_rfield[i];
    if (!p->present)
        return (uint64_t) -1;
    m = CVMX_PTH_GET_MASK(p->len, p->pos);

    return((r & m) >> p->pos);
}
