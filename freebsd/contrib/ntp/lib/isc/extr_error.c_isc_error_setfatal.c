
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * isc_errorcallback_t ;


 int * default_fatal_callback ;
 int * fatal_callback ;

void
isc_error_setfatal(isc_errorcallback_t cb) {
 if (cb == ((void*)0))
  fatal_callback = default_fatal_callback;
 else
  fatal_callback = cb;
}
