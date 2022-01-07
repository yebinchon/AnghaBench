
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wpa_ctrl_req_type { ____Placeholder_wpa_ctrl_req_type } wpa_ctrl_req_type ;


 int MSG_WARNING ;
 int wpa_printf (int ,char*,int) ;

const char * wpa_supplicant_ctrl_req_to_string(enum wpa_ctrl_req_type field,
            const char *default_txt,
            const char **txt)
{
 const char *ret = ((void*)0);

 *txt = default_txt;

 switch (field) {
 case 136:
  *txt = "Identity";
  ret = "IDENTITY";
  break;
 case 132:
  *txt = "Password";
  ret = "PASSWORD";
  break;
 case 135:
  *txt = "New Password";
  ret = "NEW_PASSWORD";
  break;
 case 131:
  *txt = "PIN";
  ret = "PIN";
  break;
 case 134:
  ret = "OTP";
  break;
 case 133:
  *txt = "Private key passphrase";
  ret = "PASSPHRASE";
  break;
 case 128:
  ret = "SIM";
  break;
 case 129:
  *txt = "PSK or passphrase";
  ret = "PSK_PASSPHRASE";
  break;
 case 130:
  *txt = "External server certificate validation";
  ret = "EXT_CERT_CHECK";
  break;
 default:
  break;
 }


 if (*txt == ((void*)0)) {
  wpa_printf(MSG_WARNING, "No message for request %d", field);
  ret = ((void*)0);
 }

 return ret;
}
