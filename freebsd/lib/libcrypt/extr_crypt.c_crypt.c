
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_data {int dummy; } ;


 char* crypt_r (char const*,char const*,struct crypt_data*) ;

char *
crypt(const char *passwd, const char *salt)
{
 static struct crypt_data data;

 return (crypt_r(passwd, salt, &data));
}
