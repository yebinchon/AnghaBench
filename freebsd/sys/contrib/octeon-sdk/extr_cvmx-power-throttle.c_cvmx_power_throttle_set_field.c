
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cvmx_power_throttle_rfield_t {int pos; int len; } ;


 int CVMX_PTH_GET_MASK (int ,int) ;
 int CVMX_PTH_INDEX_MAX ;
 int OCTEON_CN6XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int assert (int) ;
 struct cvmx_power_throttle_rfield_t* cvmx_power_throttle_rfield ;

__attribute__((used)) static int cvmx_power_throttle_set_field(int i, uint64_t r, uint64_t v)
{
    if (OCTEON_IS_MODEL(OCTEON_CN6XXX))
    {
        uint64_t m;
        struct cvmx_power_throttle_rfield_t *p;

        assert(i < CVMX_PTH_INDEX_MAX);

        p = &cvmx_power_throttle_rfield[i];
        m = CVMX_PTH_GET_MASK(p->len, p->pos);

        return((~m & r) | ((v << p->pos) & m));
    }
    return 0;
}
