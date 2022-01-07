
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_hal_eth_adapter {int mac_mode; } ;
struct al_eth_capabilities {void* pfc; void* speed_10000_FD; void* eee; void* speed_1000_FD; void* speed_100_FD; void* speed_100_HD; void* speed_10_FD; void* speed_10_HD; void* speed_10000_HD; void* speed_1000_HD; } ;





 void* AL_FALSE ;
 void* AL_TRUE ;
 int EPERM ;
 int al_assert (struct al_eth_capabilities*) ;
 int al_err (char*,int) ;

int al_eth_capabilities_get(struct al_hal_eth_adapter *adapter, struct al_eth_capabilities *caps)
{
 al_assert(caps);

 caps->speed_10_HD = AL_FALSE;
 caps->speed_10_FD = AL_FALSE;
 caps->speed_100_HD = AL_FALSE;
 caps->speed_100_FD = AL_FALSE;
 caps->speed_1000_HD = AL_FALSE;
 caps->speed_1000_FD = AL_FALSE;
 caps->speed_10000_HD = AL_FALSE;
 caps->speed_10000_FD = AL_FALSE;
 caps->pfc = AL_FALSE;
 caps->eee = AL_FALSE;

 switch (adapter->mac_mode) {
  case 129:
  case 128:
   caps->speed_10_HD = AL_TRUE;
   caps->speed_10_FD = AL_TRUE;
   caps->speed_100_HD = AL_TRUE;
   caps->speed_100_FD = AL_TRUE;
   caps->speed_1000_FD = AL_TRUE;
   caps->eee = AL_TRUE;
   break;
  case 130:
   caps->speed_10000_FD = AL_TRUE;
   caps->pfc = AL_TRUE;
   break;
  default:
  al_err("Eth: unsupported MAC mode %d", adapter->mac_mode);
  return -EPERM;
 }
 return 0;
}
