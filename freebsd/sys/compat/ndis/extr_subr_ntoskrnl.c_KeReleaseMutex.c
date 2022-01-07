
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int dh_sigstate; } ;
struct TYPE_4__ {TYPE_2__ km_header; int * km_ownerthread; int km_abandoned; } ;
typedef TYPE_1__ kmutant ;


 int FALSE ;
 int IO_NO_INCREMENT ;
 int STATUS_MUTANT_NOT_OWNED ;
 int * curthread ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ntoskrnl_dispatchlock ;
 int ntoskrnl_waittest (TYPE_2__*,int ) ;

__attribute__((used)) static uint32_t
KeReleaseMutex(kmutant *kmutex, uint8_t kwait)
{
 uint32_t prevstate;

 mtx_lock(&ntoskrnl_dispatchlock);
 prevstate = kmutex->km_header.dh_sigstate;
 if (kmutex->km_ownerthread != curthread) {
  mtx_unlock(&ntoskrnl_dispatchlock);
  return (STATUS_MUTANT_NOT_OWNED);
 }

 kmutex->km_header.dh_sigstate++;
 kmutex->km_abandoned = FALSE;

 if (kmutex->km_header.dh_sigstate == 1) {
  kmutex->km_ownerthread = ((void*)0);
  ntoskrnl_waittest(&kmutex->km_header, IO_NO_INCREMENT);
 }

 mtx_unlock(&ntoskrnl_dispatchlock);

 return (prevstate);
}
