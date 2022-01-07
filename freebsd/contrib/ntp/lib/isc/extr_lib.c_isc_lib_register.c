
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISC_R_SUCCESS ;
 int RUNTIME_CHECK (int) ;
 int do_register ;
 scalar_t__ isc_once_do (int *,int ) ;
 int register_once ;

void
isc_lib_register() {
 RUNTIME_CHECK(isc_once_do(&register_once, do_register)
        == ISC_R_SUCCESS);
}
