
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scard_data {scalar_t__ sim_type; } ;
typedef int cmd ;


 int MSG_DEBUG ;
 long SCARD_S_SUCCESS ;
 scalar_t__ SCARD_USIM ;
 unsigned char SIM_CMD_READ_RECORD ;
 unsigned char USIM_CLA ;
 int os_free (unsigned char*) ;
 unsigned char* os_malloc (size_t) ;
 int os_memcpy (unsigned char*,unsigned char*,size_t) ;
 long scard_transmit (struct scard_data*,unsigned char*,int,unsigned char*,size_t*) ;
 int wpa_printf (int ,char*,unsigned char,unsigned char) ;

__attribute__((used)) static int scard_read_record(struct scard_data *scard,
        unsigned char *data, size_t len,
        unsigned char recnum, unsigned char mode)
{
 unsigned char cmd[5] = { SIM_CMD_READ_RECORD };
 size_t blen = len + 3;
 unsigned char *buf;
 long ret;

 if (scard->sim_type == SCARD_USIM)
  cmd[0] = USIM_CLA;
 cmd[2] = recnum;
 cmd[3] = mode;
 cmd[4] = len;

 buf = os_malloc(blen);
 if (buf == ((void*)0))
  return -1;

 ret = scard_transmit(scard, cmd, sizeof(cmd), buf, &blen);
 if (ret != SCARD_S_SUCCESS) {
  os_free(buf);
  return -2;
 }
 if (blen != len + 2) {
  wpa_printf(MSG_DEBUG, "SCARD: record read returned unexpected "
      "length %ld (expected %ld)",
      (long) blen, (long) len + 2);
  os_free(buf);
  return -3;
 }

 if (buf[len] != 0x90 || buf[len + 1] != 0x00) {
  wpa_printf(MSG_DEBUG, "SCARD: record read returned unexpected "
      "status %02x %02x (expected 90 00)",
      buf[len], buf[len + 1]);
  os_free(buf);
  return -4;
 }

 os_memcpy(data, buf, len);
 os_free(buf);

 return 0;
}
