
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_write (void*,void const*,int) ;

__attribute__((used)) static int send_bio_chars(void *arg, const void *buf, int len)
{
    if (!arg)
        return 1;
    if (BIO_write(arg, buf, len) != len)
        return 0;
    return 1;
}
