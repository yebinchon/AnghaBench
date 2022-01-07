
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_3__ {int * os_dirty_dnodes; } ;
typedef TYPE_1__ objset_t ;
typedef int boolean_t ;


 size_t TXG_MASK ;
 int multilist_is_empty (int ) ;

boolean_t
dmu_objset_is_dirty(objset_t *os, uint64_t txg)
{
 return (!multilist_is_empty(os->os_dirty_dnodes[txg & TXG_MASK]));
}
