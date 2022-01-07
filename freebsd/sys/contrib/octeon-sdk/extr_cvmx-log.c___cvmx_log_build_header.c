
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int cvmx_log_type_t ;
struct TYPE_3__ {int cycle; scalar_t__ size; int type; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_log_header_t ;


 int cvmx_get_cycle () ;

__attribute__((used)) static inline uint64_t __cvmx_log_build_header(cvmx_log_type_t type, uint64_t size)
{
    cvmx_log_header_t header;
    header.u64 = 0;
    header.s.type = type;
    header.s.size = size;
    header.s.cycle = cvmx_get_cycle();
    return header.u64;
}
