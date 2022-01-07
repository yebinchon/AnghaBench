
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_thread_key_t ;


 int GetLastError () ;
 int TlsAlloc () ;

int
isc_thread_key_create(isc_thread_key_t *key, void (*func)(void *)) {
 *key = TlsAlloc();

 return ((*key != -1) ? 0 : GetLastError());
}
