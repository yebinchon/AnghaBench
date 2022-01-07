
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DES_DECRYPT ;
 scalar_t__ DES_FAILED (int) ;
 int DES_HW ;
 int bin2hex (int,unsigned char*,char*) ;
 int bzero (char*,int) ;
 int cbc_crypt (char*,char*,int,int,char*) ;
 int free (char*) ;
 int hex2bin (int,char*,char*) ;
 char* malloc (unsigned int) ;
 int passwd2des (char*,char*) ;
 int strlen (char*) ;

int
xdecrypt(char *secret, char *passwd)
{
 char key[8];
 char ivec[8];
 char *buf;
 int err;
 int len;

 len = strlen(secret) / 2;
 if ((buf = malloc((unsigned)len)) == ((void*)0)) {
  return(0);
 }

 hex2bin(len, secret, buf);
 passwd2des(passwd, key);
 bzero(ivec, 8);

 err = cbc_crypt(key, buf, len, DES_DECRYPT | DES_HW, ivec);
 if (DES_FAILED(err)) {
  free(buf);
  return (0);
 }
 bin2hex(len, (unsigned char *) buf, secret);
 free(buf);
 return (1);
}
