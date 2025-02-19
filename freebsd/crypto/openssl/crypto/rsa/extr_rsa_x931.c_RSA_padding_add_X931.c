
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RSA_F_RSA_PADDING_ADD_X931 ;
 int RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE ;
 int RSAerr (int ,int ) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int memset (unsigned char*,int,int) ;

int RSA_padding_add_X931(unsigned char *to, int tlen,
                         const unsigned char *from, int flen)
{
    int j;
    unsigned char *p;






    j = tlen - flen - 2;

    if (j < 0) {
        RSAerr(RSA_F_RSA_PADDING_ADD_X931, RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE);
        return -1;
    }

    p = (unsigned char *)to;


    if (j == 0) {
        *p++ = 0x6A;
    } else {
        *p++ = 0x6B;
        if (j > 1) {
            memset(p, 0xBB, j - 1);
            p += j - 1;
        }
        *p++ = 0xBA;
    }
    memcpy(p, from, (unsigned int)flen);
    p += flen;
    *p = 0xCC;
    return 1;
}
