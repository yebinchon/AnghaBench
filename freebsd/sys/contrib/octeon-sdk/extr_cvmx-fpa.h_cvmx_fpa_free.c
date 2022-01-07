
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int didspace; } ;
struct TYPE_4__ {int u64; TYPE_1__ sfilldidspace; } ;
typedef TYPE_2__ cvmx_addr_t ;


 int CVMX_ADDR_DIDSPACE (int ) ;
 int CVMX_FULL_DID (int ,int ) ;
 int CVMX_OCT_DID_FPA ;
 int CVMX_SYNCWS ;
 int cvmx_ptr_to_phys (void*) ;
 int cvmx_write_io (int ,int ) ;

__attribute__((used)) static inline void cvmx_fpa_free(void *ptr, uint64_t pool, uint64_t num_cache_lines)
{
    cvmx_addr_t newptr;
    newptr.u64 = cvmx_ptr_to_phys(ptr);
    newptr.sfilldidspace.didspace = CVMX_ADDR_DIDSPACE(CVMX_FULL_DID(CVMX_OCT_DID_FPA,pool));



    CVMX_SYNCWS;

    cvmx_write_io(newptr.u64, num_cache_lines);
}
