
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISC_R_SUCCESS ;
 int RUNTIME_CHECK (int) ;
 scalar_t__ isc_mutex_init (int *) ;
 int isc_strerror_lock ;

__attribute__((used)) static void init_lock(void) {
 RUNTIME_CHECK(isc_mutex_init(&isc_strerror_lock) == ISC_R_SUCCESS);
}
