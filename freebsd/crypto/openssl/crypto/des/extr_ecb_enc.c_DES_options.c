
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int DES_LONG ;


 int OPENSSL_strlcpy (char*,char*,int) ;

const char *DES_options(void)
{
    static int init = 1;
    static char buf[12];

    if (init) {
        if (sizeof(DES_LONG) != sizeof(long))
            OPENSSL_strlcpy(buf, "des(int)", sizeof(buf));
        else
            OPENSSL_strlcpy(buf, "des(long)", sizeof(buf));
        init = 0;
    }
    return buf;
}
