
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int WLAN_PA_GAS_COMEBACK_REQ ;
 struct wpabuf* gas_build_req (int ,int ,int ) ;

struct wpabuf * gas_build_comeback_req(u8 dialog_token)
{
 return gas_build_req(WLAN_PA_GAS_COMEBACK_REQ, dialog_token, 0);
}
