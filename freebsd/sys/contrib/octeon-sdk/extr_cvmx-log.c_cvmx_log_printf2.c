
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CAST64 (char const*) ;
 int CVMX_LOG_TYPE_PRINTF ;
 int __cvmx_log_build_header (int ,int) ;
 int __cvmx_log_write (int ) ;

void cvmx_log_printf2(const char *format, uint64_t number1, uint64_t number2)
{
    __cvmx_log_write(__cvmx_log_build_header(CVMX_LOG_TYPE_PRINTF, 3));
    __cvmx_log_write(CAST64(format));
    __cvmx_log_write(number1);
    __cvmx_log_write(number2);
}
