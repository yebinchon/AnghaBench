
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* os_malloc (size_t) ;
 int os_snprintf (char*,size_t,char*,char const*,char const*) ;
 int os_strlen (char const*) ;

__attribute__((used)) static char * add_path(const char *prev, const char *leaf)
{
 size_t len;
 char *new_uri;

 if (prev == ((void*)0))
  return ((void*)0);

 len = os_strlen(prev) + 1 + os_strlen(leaf) + 1;
 new_uri = os_malloc(len);
 if (new_uri)
  os_snprintf(new_uri, len, "%s/%s", prev, leaf);

 return new_uri;
}
