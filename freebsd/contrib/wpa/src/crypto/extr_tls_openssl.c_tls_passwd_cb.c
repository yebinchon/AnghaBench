
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_strlcpy (char*,char const*,int) ;
 int os_strlen (char*) ;

__attribute__((used)) static int tls_passwd_cb(char *buf, int size, int rwflag, void *password)
{
 if (!password)
  return 0;
 os_strlcpy(buf, (const char *) password, size);
 return os_strlen(buf);
}
