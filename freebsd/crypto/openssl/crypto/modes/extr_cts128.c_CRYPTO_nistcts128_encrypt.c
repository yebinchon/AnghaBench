
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int (* cbc128_f ) (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int) ;


 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int) ;
 int stub2 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int) ;
 int stub3 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int) ;

size_t CRYPTO_nistcts128_encrypt(const unsigned char *in, unsigned char *out,
                                 size_t len, const void *key,
                                 unsigned char ivec[16], cbc128_f cbc)
{
    size_t residue;
    union {
        size_t align;
        unsigned char c[16];
    } tmp;

    if (len < 16)
        return 0;

    residue = len % 16;

    len -= residue;

    (*cbc) (in, out, len, key, ivec, 1);

    if (residue == 0)
        return len;

    in += len;
    out += len;




    memset(tmp.c, 0, sizeof(tmp));
    memcpy(tmp.c, in, residue);
    (*cbc) (tmp.c, out - 16 + residue, 16, key, ivec, 1);

    return len + residue;
}
