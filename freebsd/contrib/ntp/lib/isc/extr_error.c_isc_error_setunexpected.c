
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * isc_errorcallback_t ;


 int * default_unexpected_callback ;
 int * unexpected_callback ;

void
isc_error_setunexpected(isc_errorcallback_t cb) {
 if (cb == ((void*)0))
  unexpected_callback = default_unexpected_callback;
 else
  unexpected_callback = cb;
}
