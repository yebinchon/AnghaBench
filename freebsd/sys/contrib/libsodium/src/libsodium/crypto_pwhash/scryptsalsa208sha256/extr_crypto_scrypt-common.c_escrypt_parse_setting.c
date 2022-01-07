
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;


 scalar_t__ decode64_one (int *,char const) ;
 char* decode64_uint32 (int *,int,char const*) ;

const uint8_t *
escrypt_parse_setting(const uint8_t *setting,
                      uint32_t *N_log2_p, uint32_t *r_p, uint32_t *p_p)
{
    const uint8_t *src;

    if (setting[0] != '$' || setting[1] != '7' || setting[2] != '$') {
        return ((void*)0);
    }
    src = setting + 3;

    if (decode64_one(N_log2_p, *src)) {
        return ((void*)0);
    }
    src++;

    src = decode64_uint32(r_p, 30, src);
    if (!src) {
        return ((void*)0);
    }

    src = decode64_uint32(p_p, 30, src);
    if (!src) {
        return ((void*)0);
    }
    return src;
}
