
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_FEATURE_PKND ;
 int __cvmx_pow_capture_v1 (void*,int) ;
 int __cvmx_pow_capture_v2 (void*,int) ;
 scalar_t__ octeon_has_feature (int ) ;

int cvmx_pow_capture(void *buffer, int buffer_size)
{
    if (octeon_has_feature(OCTEON_FEATURE_PKND))
        return __cvmx_pow_capture_v2(buffer, buffer_size);
    else
        return __cvmx_pow_capture_v1(buffer, buffer_size);
}
