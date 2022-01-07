
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_used_cb_t ;
typedef size_t dmu_objset_type_t ;


 int ** used_cbs ;

void
dmu_objset_register_type(dmu_objset_type_t ost, objset_used_cb_t *cb)
{
 used_cbs[ost] = cb;
}
