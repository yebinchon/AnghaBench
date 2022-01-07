
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_write (int *,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int prefix_puts(BIO *b, const char *str)
{
    return BIO_write(b, str, strlen(str));
}
