
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef enum operation_mode { ____Placeholder_operation_mode } operation_mode ;


 int MODE_COMPRESS ;
 scalar_t__ UINT64_MAX ;
 scalar_t__ memlimit_compress ;
 scalar_t__ memlimit_decompress ;

extern uint64_t
hardware_memlimit_get(enum operation_mode mode)
{
 const uint64_t memlimit = mode == MODE_COMPRESS
   ? memlimit_compress : memlimit_decompress;
 return memlimit != 0 ? memlimit : UINT64_MAX;
}
