
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISC_R_SUCCESS ;
 int RUNTIME_CHECK (int) ;
 int exit (int) ;
 int initialise ;
 int initialise_once ;
 int initialised ;
 scalar_t__ isc_once_do (int *,int ) ;

void
InitSockets(void) {
 RUNTIME_CHECK(isc_once_do(&initialise_once,
      initialise) == ISC_R_SUCCESS);
 if (!initialised)
  exit(1);
}
