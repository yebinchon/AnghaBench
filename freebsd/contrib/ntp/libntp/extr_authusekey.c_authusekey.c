
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int keyid_t ;


 int MD5auth_setkey (int ,int,int const*,size_t,int *) ;
 size_t strlen (char const*) ;

int
authusekey(
 keyid_t keyno,
 int keytype,
 const u_char *str
 )
{
 size_t len;

 len = strlen((const char *)str);
 if (0 == len)
  return 0;

 MD5auth_setkey(keyno, keytype, str, len, ((void*)0));
 return 1;
}
