
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lo; } ;
typedef TYPE_1__ ntpcal_split ;
typedef scalar_t__ int32_t ;


 TYPE_1__ ntpcal_split_eradays (scalar_t__,int*) ;
 TYPE_1__ ntpcal_split_yeardays (scalar_t__,int) ;

int32_t
ntpcal_rd_to_mstart(
 int32_t rd
 )
{
 ntpcal_split split;
 int leaps;

 split = ntpcal_split_eradays(rd - 1, &leaps);
 split = ntpcal_split_yeardays(split.lo, leaps);

 return rd - split.lo;
}
