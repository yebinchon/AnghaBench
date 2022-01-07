
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int MAXPATHLEN ;
 int errno ;
 int readlink (char const*,char*,size_t) ;
 int xfree (char*) ;
 char* xmalloc (size_t) ;
 char* xrealloc (char*,int) ;

char *
areadlink(const char *path)
{
    char *buf;
    size_t size;
    ssize_t res;

    size = MAXPATHLEN + 1;
    buf = xmalloc(size);
    while ((size_t)(res = readlink(path, buf, size)) == size) {
 size *= 2;
 buf = xrealloc(buf, size);
    }
    if (res == -1) {
 int err;

 err = errno;
 xfree(buf);
 errno = err;
 return ((void*)0);
    }
    buf[res] = '\0';
    return xrealloc(buf, res + 1);
}
