
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 unsigned char* base64_decode (unsigned char*,int ,size_t*) ;
 int os_strlen (char*) ;
 char* os_strstr (char*,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static unsigned char * tncs_get_base64(char *start, size_t *decoded_len)
{
 char *pos, *pos2;
 unsigned char *decoded;

 pos = os_strstr(start, "<Base64>");
 if (pos == ((void*)0))
  return ((void*)0);

 pos += 8;
 pos2 = os_strstr(pos, "</Base64>");
 if (pos2 == ((void*)0))
  return ((void*)0);
 *pos2 = '\0';

 decoded = base64_decode((unsigned char *) pos, os_strlen(pos),
    decoded_len);
 *pos2 = '<';
 if (decoded == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TNC: Failed to decode Base64 data");
 }

 return decoded;
}
