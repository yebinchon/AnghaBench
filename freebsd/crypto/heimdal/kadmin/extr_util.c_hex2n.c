
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,int ) ;
 int tolower (unsigned char) ;

__attribute__((used)) static int
hex2n (char c)
{
    static char hexdigits[] = "0123456789abcdef";
    const char *p;

    p = strchr (hexdigits, tolower((unsigned char)c));
    if (p == ((void*)0))
 return -1;
    else
 return p - hexdigits;
}
