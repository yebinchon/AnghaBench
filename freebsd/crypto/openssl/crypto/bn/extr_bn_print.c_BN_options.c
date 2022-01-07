
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int BN_ULONG ;
typedef int BN_ULLONG ;


 int BIO_snprintf (char*,int,char*,int,int) ;

char *BN_options(void)
{
    static int init = 0;
    static char data[16];

    if (!init) {
        init++;




        BIO_snprintf(data, sizeof(data), "bn(%zu,%zu)",
                     sizeof(BN_ULONG) * 8, sizeof(BN_ULONG) * 8);

    }
    return data;
}
