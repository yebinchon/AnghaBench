
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CAST64 (char const*) ;
 int CVMX_LOG_TYPE_STRUCTURE ;
 int __cvmx_log_build_header (int ,int) ;
 int __cvmx_log_write (int ) ;

void cvmx_log_structure(const char *type, void *data, int size_in_bytes)
{
    uint64_t size_in_dwords = (size_in_bytes + 7) >> 3;
    uint64_t *ptr = (uint64_t*)data;

    if (size_in_dwords > 254)
        size_in_dwords = 254;

    __cvmx_log_write(__cvmx_log_build_header(CVMX_LOG_TYPE_STRUCTURE, size_in_dwords + 1));
    __cvmx_log_write(CAST64(type));
    while (size_in_dwords--)
        __cvmx_log_write(*ptr++);
}
