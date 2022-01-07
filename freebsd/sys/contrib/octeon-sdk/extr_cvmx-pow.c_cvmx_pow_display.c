
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_FEATURE_PKND ;
 int __cvmx_pow_display_v1 (void*,int) ;
 int __cvmx_pow_display_v2 (void*,int) ;
 scalar_t__ octeon_has_feature (int ) ;
 int printf (char*) ;

void cvmx_pow_display(void *buffer, int buffer_size)
{
    printf("POW Display Start\n");

    if (octeon_has_feature(OCTEON_FEATURE_PKND))
        __cvmx_pow_display_v2(buffer, buffer_size);
    else
        __cvmx_pow_display_v1(buffer, buffer_size);

    printf("POW Display End\n");
    return;
}
