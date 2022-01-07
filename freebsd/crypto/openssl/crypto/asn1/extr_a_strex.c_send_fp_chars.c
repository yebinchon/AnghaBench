
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int fwrite (void const*,int,int,void*) ;

__attribute__((used)) static int send_fp_chars(void *arg, const void *buf, int len)
{
    if (!arg)
        return 1;
    if (fwrite(buf, 1, len, arg) != (unsigned int)len)
        return 0;
    return 1;
}
