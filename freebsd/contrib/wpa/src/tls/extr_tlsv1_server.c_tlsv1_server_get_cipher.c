
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cipher_suite; } ;
struct tlsv1_server {TYPE_1__ rl; } ;
 size_t os_strlcpy (char*,char*,size_t) ;

int tlsv1_server_get_cipher(struct tlsv1_server *conn, char *buf,
       size_t buflen)
{
 char *cipher;

 switch (conn->rl.cipher_suite) {
 case 129:
  cipher = "RC4-MD5";
  break;
 case 128:
  cipher = "RC4-SHA";
  break;
 case 130:
  cipher = "DES-CBC-SHA";
  break;
 case 135:
  cipher = "DES-CBC3-SHA";
  break;
 case 143:
  cipher = "DHE-RSA-DES-CBC-SHA";
  break;
 case 148:
  cipher = "DHE-RSA-DES-CBC3-SHA";
  break;
 case 136:
  cipher = "ADH-RC4-MD5";
  break;
 case 137:
  cipher = "ADH-DES-SHA";
  break;
 case 142:
  cipher = "ADH-DES-CBC3-SHA";
  break;
 case 134:
  cipher = "AES-128-SHA";
  break;
 case 147:
  cipher = "DHE-RSA-AES-128-SHA";
  break;
 case 141:
  cipher = "ADH-AES-128-SHA";
  break;
 case 132:
  cipher = "AES-256-SHA";
  break;
 case 145:
  cipher = "DHE-RSA-AES-256-SHA";
  break;
 case 139:
  cipher = "ADH-AES-256-SHA";
  break;
 case 133:
  cipher = "AES-128-SHA256";
  break;
 case 131:
  cipher = "AES-256-SHA256";
  break;
 case 146:
  cipher = "DHE-RSA-AES-128-SHA256";
  break;
 case 144:
  cipher = "DHE-RSA-AES-256-SHA256";
  break;
 case 140:
  cipher = "ADH-AES-128-SHA256";
  break;
 case 138:
  cipher = "ADH-AES-256-SHA256";
  break;
 default:
  return -1;
 }

 if (os_strlcpy(buf, cipher, buflen) >= buflen)
  return -1;
 return 0;
}
