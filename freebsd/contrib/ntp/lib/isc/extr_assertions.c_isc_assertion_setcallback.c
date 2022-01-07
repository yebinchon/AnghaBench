
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * isc_assertioncallback_t ;


 int * default_callback ;
 int * isc_assertion_failed_cb ;

void
isc_assertion_setcallback(isc_assertioncallback_t cb) {
 if (cb == ((void*)0))
  isc_assertion_failed_cb = default_callback;
 else
  isc_assertion_failed_cb = cb;
}
