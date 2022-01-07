
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (char*) ;
 char* os_zalloc (int) ;
 scalar_t__ wpa_write_ciphers (char*,char*,int,char*) ;

__attribute__((used)) static char * wpa_config_write_cipher(int cipher)
{



 char *buf = os_zalloc(50);
 if (buf == ((void*)0))
  return ((void*)0);

 if (wpa_write_ciphers(buf, buf + 50, cipher, " ") < 0) {
  os_free(buf);
  return ((void*)0);
 }

 return buf;

}
