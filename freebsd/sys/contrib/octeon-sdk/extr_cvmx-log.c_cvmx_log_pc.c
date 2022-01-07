
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_LOG_TYPE_PC ;
 int __cvmx_log_build_header (int ,int) ;
 int __cvmx_log_write (int ) ;

void cvmx_log_pc(uint64_t pc)
{
    __cvmx_log_write(__cvmx_log_build_header(CVMX_LOG_TYPE_PC, 1));
    __cvmx_log_write(pc);
}
