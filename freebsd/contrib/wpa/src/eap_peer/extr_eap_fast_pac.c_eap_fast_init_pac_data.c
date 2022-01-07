
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config_blob {int len; scalar_t__ data; } ;
struct eap_sm {int dummy; } ;
struct eap_fast_read_ctx {int buf_len; char* pos; char* end; int * buf; int * f; } ;


 int MSG_INFO ;
 struct wpa_config_blob* eap_get_config_blob (struct eap_sm*,char const*) ;
 int * fopen (char const*,char*) ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 int os_memset (struct eap_fast_read_ctx*,int ,int) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static int eap_fast_init_pac_data(struct eap_sm *sm, const char *pac_file,
      struct eap_fast_read_ctx *rc)
{
 os_memset(rc, 0, sizeof(*rc));

 rc->buf_len = 2048;
 rc->buf = os_malloc(rc->buf_len);
 if (rc->buf == ((void*)0))
  return -1;

 if (os_strncmp(pac_file, "blob://", 7) == 0) {
  const struct wpa_config_blob *blob;
  blob = eap_get_config_blob(sm, pac_file + 7);
  if (blob == ((void*)0)) {
   wpa_printf(MSG_INFO, "EAP-FAST: No PAC blob '%s' - "
       "assume no PAC entries have been "
       "provisioned", pac_file + 7);
   os_free(rc->buf);
   return -1;
  }
  rc->pos = (char *) blob->data;
  rc->end = (char *) blob->data + blob->len;
 } else {
  rc->f = fopen(pac_file, "rb");
  if (rc->f == ((void*)0)) {
   wpa_printf(MSG_INFO, "EAP-FAST: No PAC file '%s' - "
       "assume no PAC entries have been "
       "provisioned", pac_file);
   os_free(rc->buf);
   return -1;
  }
 }

 return 0;
}
