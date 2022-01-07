
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int sha512_prf_bits (int const*,size_t,char const*,int const*,size_t,int *,size_t) ;

int sha512_prf(const u8 *key, size_t key_len, const char *label,
        const u8 *data, size_t data_len, u8 *buf, size_t buf_len)
{
 return sha512_prf_bits(key, key_len, label, data, data_len, buf,
          buf_len * 8);
}
