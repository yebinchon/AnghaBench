
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ lo; } ;


 TYPE_1__ ntpcal_split_eradays (scalar_t__,int *) ;

int32_t
ntpcal_rd_to_ystart(
 int32_t rd
 )
{





 return rd - ntpcal_split_eradays(rd - 1, ((void*)0)).lo;
}
