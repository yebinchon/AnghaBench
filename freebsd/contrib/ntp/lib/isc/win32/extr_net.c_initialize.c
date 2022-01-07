
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISC_R_SUCCESS ;
 int RUNTIME_CHECK (int) ;
 int initialize_action ;
 scalar_t__ isc_once_do (int *,int ) ;
 int once ;

__attribute__((used)) static void
initialize(void) {
 RUNTIME_CHECK(isc_once_do(&once, initialize_action) == ISC_R_SUCCESS);
}
