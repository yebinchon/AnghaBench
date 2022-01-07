
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dl_os; } ;
typedef TYPE_1__ dsl_deadlist_t ;
typedef int boolean_t ;



boolean_t
dsl_deadlist_is_open(dsl_deadlist_t *dl)
{
 return (dl->dl_os != ((void*)0));
}
