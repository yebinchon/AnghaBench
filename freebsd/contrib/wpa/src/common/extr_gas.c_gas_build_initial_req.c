
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int WLAN_PA_GAS_INITIAL_REQ ;
 struct wpabuf* gas_build_req (int ,int ,size_t) ;

struct wpabuf * gas_build_initial_req(u8 dialog_token, size_t size)
{
 return gas_build_req(WLAN_PA_GAS_INITIAL_REQ, dialog_token,
        size);
}
