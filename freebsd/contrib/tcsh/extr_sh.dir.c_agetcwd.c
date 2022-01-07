
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ERANGE ;
 size_t MAXPATHLEN ;
 int * SAVE (char*) ;
 int errno ;
 int * getcwd (char*,size_t) ;
 int xfree (char*) ;
 char* xmalloc (size_t) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static Char *
agetcwd(void)
{
    char *buf;
    Char *cwd;
    size_t len;

    len = MAXPATHLEN;
    buf = xmalloc(len);
    while (getcwd(buf, len) == ((void*)0)) {
 int err;

 err = errno;
 if (err != ERANGE) {
     xfree(buf);
     errno = err;
     return ((void*)0);
 }
 len *= 2;
 buf = xrealloc(buf, len);
    }
    if (*buf == '\0') {
 xfree(buf);
 return ((void*)0);
    }
    cwd = SAVE(buf);
    xfree(buf);
    return cwd;
}
