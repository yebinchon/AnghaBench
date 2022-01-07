
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dsl_dir_t ;
struct TYPE_2__ {int dd_reserved; } ;


 TYPE_1__* dsl_dir_phys (int *) ;

uint64_t
dsl_dir_get_reservation(dsl_dir_t *dd)
{
 return (dsl_dir_phys(dd)->dd_reserved);
}
