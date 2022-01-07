
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void longswap(void *_ptr, size_t len)
{
    const union {
        long one;
        char little;
    } is_endian = {
        1
    };

    if (is_endian.little) {
        size_t i;
        unsigned char *p = _ptr, c;

        for (i = 0; i < len; i += 4) {
            c = p[0], p[0] = p[3], p[3] = c;
            c = p[1], p[1] = p[2], p[2] = c;
        }
    }
}
