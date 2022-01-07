
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_pac {int a_id_info_len; int a_id_info; int i_id_len; int i_id; int a_id_len; int a_id; int pac_info_len; int pac_info; int pac_opaque_len; int pac_opaque; int pac_key; int pac_type; } ;


 int EAP_TEAP_PAC_KEY_LEN ;
 int MSG_DEBUG ;
 int eap_teap_write (char**,char**,size_t*,char*,int ,int ,int) ;
 int os_snprintf (char*,int,char*,...) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_teap_add_pac_data(struct eap_teap_pac *pac, char **buf,
     char **pos, size_t *buf_len)
{
 int ret;

 ret = os_snprintf(*pos, *buf + *buf_len - *pos,
     "START\nPAC-Type=%d\n", pac->pac_type);
 if (os_snprintf_error(*buf + *buf_len - *pos, ret))
  return -1;

 *pos += ret;
 eap_teap_write(buf, pos, buf_len, "PAC-Key",
         pac->pac_key, EAP_TEAP_PAC_KEY_LEN, 0);
 eap_teap_write(buf, pos, buf_len, "PAC-Opaque",
         pac->pac_opaque, pac->pac_opaque_len, 0);
 eap_teap_write(buf, pos, buf_len, "PAC-Info",
         pac->pac_info, pac->pac_info_len, 0);
 eap_teap_write(buf, pos, buf_len, "A-ID",
         pac->a_id, pac->a_id_len, 0);
 eap_teap_write(buf, pos, buf_len, "I-ID",
         pac->i_id, pac->i_id_len, 1);
 eap_teap_write(buf, pos, buf_len, "A-ID-Info",
         pac->a_id_info, pac->a_id_info_len, 1);
 if (!(*buf)) {
  wpa_printf(MSG_DEBUG, "EAP-TEAP: No memory for PAC data");
  return -1;
 }
 ret = os_snprintf(*pos, *buf + *buf_len - *pos, "END\n");
 if (os_snprintf_error(*buf + *buf_len - *pos, ret))
  return -1;
 *pos += ret;

 return 0;
}
