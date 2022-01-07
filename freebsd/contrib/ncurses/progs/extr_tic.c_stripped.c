
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UChar (char) ;
 int failed (char*) ;
 scalar_t__ isspace (int ) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *
stripped(char *src)
{
    char *dst = 0;

    while (isspace(UChar(*src)))
 src++;

    if (*src != '\0') {
 size_t len;

 if ((dst = strdup(src)) == ((void*)0)) {
     failed("strdup");
 } else {
     len = strlen(dst);
     while (--len != 0 && isspace(UChar(dst[len])))
  dst[len] = '\0';
 }
    }
    return dst;
}
