
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int INT64_MAX ;
 int INT64_MIN ;

__attribute__((used)) static int64_t
pkg_atol256(const char *_p, unsigned char_cnt)
{
        int64_t l, upper_limit, lower_limit;
        const unsigned char *p = (const unsigned char *)_p;

        upper_limit = INT64_MAX / 256;
        lower_limit = INT64_MIN / 256;


        if ((0x40 & *p) == 0x40)
                l = (int64_t)-1;
        else
                l = 0;
        l = (l << 6) | (0x3f & *p++);
        while (--char_cnt > 0) {
                if (l > upper_limit) {
                        l = INT64_MAX;
                        break;
                } else if (l < lower_limit) {
                        l = INT64_MIN;
                        break;
                }
                l = (l << 8) | (0xff & (int64_t)*p++);
        }
        return (l);
}
