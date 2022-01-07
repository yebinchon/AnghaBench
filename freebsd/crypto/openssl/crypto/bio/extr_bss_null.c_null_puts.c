
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int strlen (char const*) ;

__attribute__((used)) static int null_puts(BIO *bp, const char *str)
{
    if (str == ((void*)0))
        return 0;
    return strlen(str);
}
