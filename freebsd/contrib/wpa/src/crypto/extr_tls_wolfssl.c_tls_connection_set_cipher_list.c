
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int ssl; } ;
typedef int buf ;


 int MSG_DEBUG ;



 int TLS_CIPHER_NONE ;



 int os_snprintf (char*,int,char*,char const*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int wolfSSL_set_cipher_list (int ,char*) ;
 int wpa_printf (int ,char*,...) ;

int tls_connection_set_cipher_list(void *tls_ctx, struct tls_connection *conn,
       u8 *ciphers)
{
 char buf[128], *pos, *end;
 u8 *c;
 int ret;

 if (!conn || !conn->ssl || !ciphers)
  return -1;

 buf[0] = '\0';
 pos = buf;
 end = pos + sizeof(buf);

 c = ciphers;
 while (*c != TLS_CIPHER_NONE) {
  const char *suite;

  switch (*c) {
  case 130:
   suite = "RC4-SHA";
   break;
  case 133:
   suite = "AES128-SHA";
   break;
  case 129:
   suite = "DHE-RSA-AES128-SHA";
   break;
  case 131:
   suite = "ADH-AES128-SHA";
   break;
  case 128:
   suite = "DHE-RSA-AES256-SHA";
   break;
  case 132:
   suite = "AES256-SHA";
   break;
  default:
   wpa_printf(MSG_DEBUG,
       "TLS: Unsupported cipher selection: %d", *c);
   return -1;
  }
  ret = os_snprintf(pos, end - pos, ":%s", suite);
  if (os_snprintf_error(end - pos, ret))
   break;
  pos += ret;

  c++;
 }

 wpa_printf(MSG_DEBUG, "wolfSSL: cipher suites: %s", buf + 1);

 if (wolfSSL_set_cipher_list(conn->ssl, buf + 1) != 1) {
  wpa_printf(MSG_DEBUG, "Cipher suite configuration failed");
  return -1;
 }

 return 0;
}
