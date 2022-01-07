
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const CHAR_BIT ;

int
__timingsafe_memcmp(const void *b1, const void *b2, size_t len)
{
        const unsigned char *p1 = b1, *p2 = b2;
        size_t i;
        int res = 0, done = 0;

        for (i = 0; i < len; i++) {

                int lt = (p1[i] - p2[i]) >> CHAR_BIT;


                int gt = (p2[i] - p1[i]) >> CHAR_BIT;


                int cmp = lt - gt;


                res |= cmp & ~done;


                done |= lt | gt;
        }

        return (res);
}
