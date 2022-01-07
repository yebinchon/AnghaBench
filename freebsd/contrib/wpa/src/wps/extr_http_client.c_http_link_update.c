
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,char const*,int) ;
 int os_snprintf (char*,size_t,char*,char const*,char*) ;
 char* os_strchr (char const*,char) ;
 int os_strlen (char const*) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 char* os_strrchr (char const*,char) ;

char * http_link_update(char *url, const char *base)
{
 char *n;
 size_t len;
 const char *pos;




 if (url == ((void*)0))
  return ((void*)0);

 if (os_strncmp(url, "http://", 7) == 0)
  return url;

 if (os_strncmp(base, "http://", 7) != 0)
  return url;

 len = os_strlen(url) + 1 + os_strlen(base) + 1;
 n = os_malloc(len);
 if (n == ((void*)0))
  return url;

 if (url[0] == '/') {
  pos = os_strchr(base + 7, '/');
  if (pos == ((void*)0)) {
   os_snprintf(n, len, "%s%s", base, url);
  } else {
   os_memcpy(n, base, pos - base);
   os_memcpy(n + (pos - base), url, os_strlen(url) + 1);
  }
 } else {
  pos = os_strrchr(base + 7, '/');
  if (pos == ((void*)0)) {
   os_snprintf(n, len, "%s/%s", base, url);
  } else {
   os_memcpy(n, base, pos - base + 1);
   os_memcpy(n + (pos - base) + 1, url, os_strlen(url) +
      1);
  }
 }

 os_free(url);

 return n;
}
