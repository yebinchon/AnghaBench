
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_LOG_TYPE_DATA ;
 int __cvmx_log_build_header (int ,int) ;
 int __cvmx_log_write (int ) ;

void cvmx_log_data(uint64_t size_in_dwords, const uint64_t *data)
{
    if (size_in_dwords > 255)
        size_in_dwords = 255;

    __cvmx_log_write(__cvmx_log_build_header(CVMX_LOG_TYPE_DATA, size_in_dwords));
    while (size_in_dwords--)
        __cvmx_log_write(*data++);
}
