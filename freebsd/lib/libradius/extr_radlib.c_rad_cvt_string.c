
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memcpy (char*,void const*,size_t) ;

char *
rad_cvt_string(const void *data, size_t len)
{
 char *s;

 s = malloc(len + 1);
 if (s != ((void*)0)) {
  memcpy(s, data, len);
  s[len] = '\0';
 }
 return s;
}
