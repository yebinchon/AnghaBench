
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_thread_key_t ;


 void* TlsGetValue (int ) ;

void *
isc_thread_key_getspecific(isc_thread_key_t key) {
 return(TlsGetValue(key));
}
