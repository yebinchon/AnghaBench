
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int (* cbc128_f ) (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int ) ;


 int memcpy (unsigned char*,unsigned char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int ) ;
 int stub2 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int ) ;
 int stub3 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int ) ;
 int stub4 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int ) ;
 int stub5 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int ) ;

size_t CRYPTO_nistcts128_decrypt(const unsigned char *in, unsigned char *out,
                                 size_t len, const void *key,
                                 unsigned char ivec[16], cbc128_f cbc)
{
    size_t residue;
    union {
        size_t align;
        unsigned char c[32];
    } tmp;

    if (len < 16)
        return 0;

    residue = len % 16;

    if (residue == 0) {
        (*cbc) (in, out, len, key, ivec, 0);
        return len;
    }

    len -= 16 + residue;

    if (len) {
        (*cbc) (in, out, len, key, ivec, 0);
        in += len;
        out += len;
    }

    memset(tmp.c, 0, sizeof(tmp));



    (*cbc) (in + residue, tmp.c, 16, key, tmp.c + 16, 0);

    memcpy(tmp.c, in, residue);



    (*cbc) (tmp.c, tmp.c, 32, key, ivec, 0);
    memcpy(out, tmp.c, 16 + residue);

    return 16 + len + residue;
}
