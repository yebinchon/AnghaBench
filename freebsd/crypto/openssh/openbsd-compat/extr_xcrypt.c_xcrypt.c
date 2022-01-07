
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bigcrypt (char const*,char const*) ;
 char* crypt (char const*,char const*) ;
 scalar_t__ is_md5_salt (char const*) ;
 scalar_t__ iscomsec () ;
 char* md5_crypt (char const*,char const*) ;
 char* pick_salt () ;

char *
xcrypt(const char *password, const char *salt)
{
 char *crypted;





 if (salt == ((void*)0))
  salt = pick_salt();
 crypted = crypt(password, salt);


 return crypted;
}
