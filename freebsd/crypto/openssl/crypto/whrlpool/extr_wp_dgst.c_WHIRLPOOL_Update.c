
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WHIRLPOOL_CTX ;


 int WHIRLPOOL_BitUpdate (int *,unsigned char const*,size_t) ;

int WHIRLPOOL_Update(WHIRLPOOL_CTX *c, const void *_inp, size_t bytes)
{





    size_t chunk = ((size_t)1) << (sizeof(size_t) * 8 - 4);
    const unsigned char *inp = _inp;

    while (bytes >= chunk) {
        WHIRLPOOL_BitUpdate(c, inp, chunk * 8);
        bytes -= chunk;
        inp += chunk;
    }
    if (bytes)
        WHIRLPOOL_BitUpdate(c, inp, bytes * 8);

    return 1;
}
