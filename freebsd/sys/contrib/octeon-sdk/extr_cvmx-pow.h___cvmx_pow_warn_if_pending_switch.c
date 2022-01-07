
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_MF_CHORD (int ) ;
 int cvmx_warn_if (int,char*,char const*) ;

__attribute__((used)) static inline void __cvmx_pow_warn_if_pending_switch(const char *function)
{
    uint64_t switch_complete;
    CVMX_MF_CHORD(switch_complete);
    cvmx_warn_if(!switch_complete, "%s called with tag switch in progress\n", function);
}
