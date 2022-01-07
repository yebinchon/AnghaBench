
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XXX ;
 char* malloc (int,int ,int ) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *
usb_strdup(const char *str)
{
 char *tmp;
 int len;

 len = 1 + strlen(str);

 tmp = malloc(len,XXX,XXX);
 if (tmp == ((void*)0))
  return (((void*)0));

 memcpy(tmp, str, len);
 return (tmp);
}
