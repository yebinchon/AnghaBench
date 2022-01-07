
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAST64 (char const*) ;
 int CVMX_LOG_TYPE_PRINTF ;
 int __cvmx_log_build_header (int ,int) ;
 int __cvmx_log_write (int ) ;

void cvmx_log_printf0(const char *format)
{
    __cvmx_log_write(__cvmx_log_build_header(CVMX_LOG_TYPE_PRINTF, 1));
    __cvmx_log_write(CAST64(format));
}
