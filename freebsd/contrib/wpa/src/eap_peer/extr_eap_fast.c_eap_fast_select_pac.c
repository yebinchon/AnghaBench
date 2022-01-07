
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_fast_data {TYPE_1__* current_pac; int pac; } ;
struct TYPE_2__ {int a_id_info_len; int a_id_info; int pac_type; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int PAC_TYPE_MACHINE_AUTHENTICATION ;
 int PAC_TYPE_TUNNEL_PAC ;
 void* eap_fast_get_pac (int ,int const*,size_t,int ) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void eap_fast_select_pac(struct eap_fast_data *data,
    const u8 *a_id, size_t a_id_len)
{
 data->current_pac = eap_fast_get_pac(data->pac, a_id, a_id_len,
          PAC_TYPE_TUNNEL_PAC);
 if (data->current_pac == ((void*)0)) {




  data->current_pac = eap_fast_get_pac(
   data->pac, a_id, a_id_len,
   PAC_TYPE_MACHINE_AUTHENTICATION);
 }

 if (data->current_pac) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: PAC found for this A-ID "
      "(PAC-Type %d)", data->current_pac->pac_type);
  wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-FAST: A-ID-Info",
      data->current_pac->a_id_info,
      data->current_pac->a_id_info_len);
 }
}
