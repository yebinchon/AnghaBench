
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISC_R_SUCCESS ;
 int RUNTIME_CHECK (int) ;
 int createlock ;
 scalar_t__ isc_mutex_init (int *) ;

__attribute__((used)) static void
initialize_lock(void) {
 RUNTIME_CHECK(isc_mutex_init(&createlock) == ISC_R_SUCCESS);
}
