
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int twos_complement (unsigned char*,unsigned char const*,size_t,unsigned char) ;

__attribute__((used)) static size_t i2c_ibuf(const unsigned char *b, size_t blen, int neg,
                       unsigned char **pp)
{
    unsigned int pad = 0;
    size_t ret, i;
    unsigned char *p, pb = 0;

    if (b != ((void*)0) && blen) {
        ret = blen;
        i = b[0];
        if (!neg && (i > 127)) {
            pad = 1;
            pb = 0;
        } else if (neg) {
            pb = 0xFF;
            if (i > 128) {
                pad = 1;
            } else if (i == 128) {




                for (pad = 0, i = 1; i < blen; i++)
                    pad |= b[i];
                pb = pad != 0 ? 0xffU : 0;
                pad = pb & 1;
            }
        }
        ret += pad;
    } else {
        ret = 1;
        blen = 0;
    }

    if (pp == ((void*)0) || (p = *pp) == ((void*)0))
        return ret;






    *p = pb;
    p += pad;

    twos_complement(p, b, blen, pb);

    *pp += ret;
    return ret;
}
