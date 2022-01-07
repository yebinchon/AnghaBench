
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_thread_key_t ;


 int GetLastError () ;
 scalar_t__ TlsFree (int ) ;

int
isc_thread_key_delete(isc_thread_key_t key) {
 return (TlsFree(key) ? 0 : GetLastError());
}
