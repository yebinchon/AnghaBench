
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strnlen (char const*,size_t) ;

char *
strndup(const char *str, size_t maxlen)
{
 char *copy;
 size_t len;

 len = strnlen(str, maxlen);
 copy = malloc(len + 1);
 if (copy != ((void*)0)) {
  (void)memcpy(copy, str, len);
  copy[len] = '\0';
 }

 return copy;
}
