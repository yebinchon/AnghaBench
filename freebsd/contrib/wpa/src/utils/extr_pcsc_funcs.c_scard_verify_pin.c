
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scard_data {scalar_t__ sim_type; } ;
typedef int resp ;
typedef int cmd ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 long SCARD_S_SUCCESS ;
 scalar_t__ SCARD_USIM ;
 unsigned char SIM_CMD_VERIFY_CHV1 ;
 unsigned char USIM_CLA ;
 int os_memcpy (unsigned char*,char const*,int) ;
 int os_memset (unsigned char*,int,int) ;
 int os_strlen (char const*) ;
 long scard_transmit (struct scard_data*,unsigned char*,int,unsigned char*,size_t*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int scard_verify_pin(struct scard_data *scard, const char *pin)
{
 long ret;
 unsigned char resp[3];
 unsigned char cmd[5 + 8] = { SIM_CMD_VERIFY_CHV1 };
 size_t len;

 wpa_printf(MSG_DEBUG, "SCARD: verifying PIN");

 if (pin == ((void*)0) || os_strlen(pin) > 8)
  return -1;

 if (scard->sim_type == SCARD_USIM)
  cmd[0] = USIM_CLA;
 os_memcpy(cmd + 5, pin, os_strlen(pin));
 os_memset(cmd + 5 + os_strlen(pin), 0xff, 8 - os_strlen(pin));

 len = sizeof(resp);
 ret = scard_transmit(scard, cmd, sizeof(cmd), resp, &len);
 if (ret != SCARD_S_SUCCESS)
  return -2;

 if (len != 2 || resp[0] != 0x90 || resp[1] != 0x00) {
  wpa_printf(MSG_WARNING, "SCARD: PIN verification failed");
  return -1;
 }

 wpa_printf(MSG_DEBUG, "SCARD: PIN verified successfully");
 return 0;
}
