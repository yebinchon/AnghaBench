
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_pac {struct eap_teap_pac* next; } ;
struct eap_sm {int dummy; } ;


 int MSG_DEBUG ;
 scalar_t__ eap_teap_add_pac_data (struct eap_teap_pac*,char**,char**,size_t*) ;
 scalar_t__ eap_teap_write_pac (struct eap_sm*,char const*,char*,int) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_snprintf (char*,int,char*,int ) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int pac_file_hdr ;
 int wpa_printf (int ,char*,int,char const*) ;

int eap_teap_save_pac(struct eap_sm *sm, struct eap_teap_pac *pac_root,
        const char *pac_file)
{
 struct eap_teap_pac *pac;
 int ret, count = 0;
 char *buf, *pos;
 size_t buf_len;

 if (!pac_file)
  return -1;

 buf_len = 1024;
 pos = buf = os_malloc(buf_len);
 if (!buf)
  return -1;

 ret = os_snprintf(pos, buf + buf_len - pos, "%s\n", pac_file_hdr);
 if (os_snprintf_error(buf + buf_len - pos, ret)) {
  os_free(buf);
  return -1;
 }
 pos += ret;

 pac = pac_root;
 while (pac) {
  if (eap_teap_add_pac_data(pac, &buf, &pos, &buf_len)) {
   os_free(buf);
   return -1;
  }
  count++;
  pac = pac->next;
 }

 if (eap_teap_write_pac(sm, pac_file, buf, pos - buf)) {
  os_free(buf);
  return -1;
 }

 wpa_printf(MSG_DEBUG, "EAP-TEAP: Wrote %d PAC entries into '%s'",
     count, pac_file);

 return 0;
}
