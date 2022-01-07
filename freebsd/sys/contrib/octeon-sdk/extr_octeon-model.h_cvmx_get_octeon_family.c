
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int OCTEON_FAMILY_MASK ;
 int OCTEON_MODEL ;
 int cvmx_get_proc_id () ;

__attribute__((used)) static inline uint32_t cvmx_get_octeon_family(void)
{



    return (OCTEON_MODEL & OCTEON_FAMILY_MASK);

}
