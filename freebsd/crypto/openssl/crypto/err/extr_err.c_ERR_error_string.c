
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ERR_error_string_n (unsigned long,char*,int) ;

char *ERR_error_string(unsigned long e, char *ret)
{
    static char buf[256];

    if (ret == ((void*)0))
        ret = buf;
    ERR_error_string_n(e, ret, (int)sizeof(buf));
    return ret;
}
