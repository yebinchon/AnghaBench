
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_thread_key_t ;


 int GetLastError () ;
 scalar_t__ TlsSetValue (int ,void*) ;

int
isc_thread_key_setspecific(isc_thread_key_t key, void *value) {
 return (TlsSetValue(key, value) ? 0 : GetLastError());
}
