
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sec; } ;
struct wps_registrar {TYPE_1__ pbc_ignore_start; int * devices; int * pbc_sessions; int nfc_pw_tokens; int pins; } ;


 int wps_free_devices (int *) ;
 int wps_free_nfc_pw_tokens (int *,int ) ;
 int wps_free_pbc_sessions (int *) ;
 int wps_free_pins (int *) ;

void wps_registrar_flush(struct wps_registrar *reg)
{
 if (reg == ((void*)0))
  return;
 wps_free_pins(&reg->pins);
 wps_free_nfc_pw_tokens(&reg->nfc_pw_tokens, 0);
 wps_free_pbc_sessions(reg->pbc_sessions);
 reg->pbc_sessions = ((void*)0);
 wps_free_devices(reg->devices);
 reg->devices = ((void*)0);



}
