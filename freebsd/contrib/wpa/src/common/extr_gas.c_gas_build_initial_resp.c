
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;


 int WLAN_PA_GAS_INITIAL_RESP ;
 struct wpabuf* gas_build_resp (int ,int ,int ,int ,int ,int ,size_t) ;

struct wpabuf *
gas_build_initial_resp(u8 dialog_token, u16 status_code, u16 comeback_delay,
         size_t size)
{
 return gas_build_resp(WLAN_PA_GAS_INITIAL_RESP, dialog_token,
         status_code, 0, 0, comeback_delay, size);
}
