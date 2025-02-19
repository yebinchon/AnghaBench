
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_fast_data {int * simck; scalar_t__ simck_idx; } ;
typedef int isk ;
typedef int imck ;


 int EAP_FAST_CMK_LEN ;
 int EAP_FAST_SIMCK_LEN ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ eap_fast_get_phase2_key (struct eap_sm*,struct eap_fast_data*,int *,int) ;
 int os_memcpy (int *,int *,int) ;
 scalar_t__ sha1_t_prf (int *,int,char*,int *,int,int *,int) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static int eap_fast_get_cmk(struct eap_sm *sm, struct eap_fast_data *data,
       u8 *cmk)
{
 u8 isk[32], imck[60];

 wpa_printf(MSG_DEBUG, "EAP-FAST: Determining CMK[%d] for Compound MIC "
     "calculation", data->simck_idx + 1);
 if (eap_fast_get_phase2_key(sm, data, isk, sizeof(isk)) < 0)
  return -1;
 wpa_hexdump_key(MSG_MSGDUMP, "EAP-FAST: ISK[j]", isk, sizeof(isk));
 if (sha1_t_prf(data->simck, EAP_FAST_SIMCK_LEN,
         "Inner Methods Compound Keys",
         isk, sizeof(isk), imck, sizeof(imck)) < 0)
  return -1;
 data->simck_idx++;
 os_memcpy(data->simck, imck, EAP_FAST_SIMCK_LEN);
 wpa_hexdump_key(MSG_MSGDUMP, "EAP-FAST: S-IMCK[j]",
   data->simck, EAP_FAST_SIMCK_LEN);
 os_memcpy(cmk, imck + EAP_FAST_SIMCK_LEN, EAP_FAST_CMK_LEN);
 wpa_hexdump_key(MSG_MSGDUMP, "EAP-FAST: CMK[j]",
   cmk, EAP_FAST_CMK_LEN);

 return 0;
}
