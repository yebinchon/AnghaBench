
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISC_LIST_INIT (int ) ;
 scalar_t__ ISC_R_SUCCESS ;
 int RUNTIME_CHECK (int) ;
 int contexts ;
 scalar_t__ isc_mutex_init (int *) ;
 int lock ;
 scalar_t__ totallost ;

__attribute__((used)) static void
initialize_action(void) {
 RUNTIME_CHECK(isc_mutex_init(&lock) == ISC_R_SUCCESS);
 ISC_LIST_INIT(contexts);
 totallost = 0;
}
