
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 int strip (char*) ;
 int strlen (char const*) ;
 char* xrealloc (char*,size_t) ;

char *
caching_strip(const char *s)
{
    static char *buf = ((void*)0);
    static size_t buf_size = 0;
    size_t size;

    if (s == ((void*)0))
      return ((void*)0);
    size = strlen(s) + 1;
    if (buf_size < size) {
 buf = xrealloc(buf, size);
 buf_size = size;
    }
    memcpy(buf, s, size);
    strip(buf);
    return buf;
}
