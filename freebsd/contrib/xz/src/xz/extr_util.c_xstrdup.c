
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 char* memcpy (char*,char const*,size_t const) ;
 int strlen (char const*) ;
 char* xmalloc (size_t const) ;

extern char *
xstrdup(const char *src)
{
 assert(src != ((void*)0));
 const size_t size = strlen(src) + 1;
 char *dest = xmalloc(size);
 return memcpy(dest, src, size);
}
