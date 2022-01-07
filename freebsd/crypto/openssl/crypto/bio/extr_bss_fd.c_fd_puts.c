
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int fd_write (int *,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int fd_puts(BIO *bp, const char *str)
{
    int n, ret;

    n = strlen(str);
    ret = fd_write(bp, str, n);
    return ret;
}
