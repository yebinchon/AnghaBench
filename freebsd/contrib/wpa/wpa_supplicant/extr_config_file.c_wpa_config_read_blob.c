
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config_blob {int * data; int * name; int len; } ;
typedef int buf ;
typedef int FILE ;


 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int * base64_decode (unsigned char*,size_t,int *) ;
 int os_free (unsigned char*) ;
 int os_memcpy (unsigned char*,char*,size_t) ;
 unsigned char* os_realloc (unsigned char*,size_t) ;
 scalar_t__ os_strcmp (char*,char*) ;
 int * os_strdup (char const*) ;
 size_t os_strlen (char*) ;
 struct wpa_config_blob* os_zalloc (int) ;
 int wpa_config_free_blob (struct wpa_config_blob*) ;
 scalar_t__ wpa_config_get_line (char*,int,int *,int*,char**) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static struct wpa_config_blob * wpa_config_read_blob(FILE *f, int *line,
           const char *name)
{
 struct wpa_config_blob *blob;
 char buf[256], *pos;
 unsigned char *encoded = ((void*)0), *nencoded;
 int end = 0;
 size_t encoded_len = 0, len;

 wpa_printf(MSG_MSGDUMP, "Line: %d - start of a new named blob '%s'",
     *line, name);

 while (wpa_config_get_line(buf, sizeof(buf), f, line, &pos)) {
  if (os_strcmp(pos, "}") == 0) {
   end = 1;
   break;
  }

  len = os_strlen(pos);
  nencoded = os_realloc(encoded, encoded_len + len);
  if (nencoded == ((void*)0)) {
   wpa_printf(MSG_ERROR, "Line %d: not enough memory for "
       "blob", *line);
   os_free(encoded);
   return ((void*)0);
  }
  encoded = nencoded;
  os_memcpy(encoded + encoded_len, pos, len);
  encoded_len += len;
 }

 if (!end || !encoded) {
  wpa_printf(MSG_ERROR, "Line %d: blob was not terminated "
      "properly", *line);
  os_free(encoded);
  return ((void*)0);
 }

 blob = os_zalloc(sizeof(*blob));
 if (blob == ((void*)0)) {
  os_free(encoded);
  return ((void*)0);
 }
 blob->name = os_strdup(name);
 blob->data = base64_decode(encoded, encoded_len, &blob->len);
 os_free(encoded);

 if (blob->name == ((void*)0) || blob->data == ((void*)0)) {
  wpa_config_free_blob(blob);
  return ((void*)0);
 }

 return blob;
}
