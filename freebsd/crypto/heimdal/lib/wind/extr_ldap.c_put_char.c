
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int
put_char(uint32_t *out, size_t *o, uint32_t c, size_t out_len)
{
    if (*o >= out_len)
 return 1;
    out[*o] = c;
    (*o)++;
    return 0;
}
