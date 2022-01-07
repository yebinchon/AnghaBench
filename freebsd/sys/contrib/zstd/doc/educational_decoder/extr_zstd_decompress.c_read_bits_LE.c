
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int ERROR (char*) ;

__attribute__((used)) static inline u64 read_bits_LE(const u8 *src, const int num_bits,
                               const size_t offset) {
    if (num_bits > 64) {
        ERROR("Attempt to read an invalid number of bits");
    }


    src += offset / 8;
    size_t bit_offset = offset % 8;
    u64 res = 0;

    int shift = 0;
    int left = num_bits;
    while (left > 0) {
        u64 mask = left >= 8 ? 0xff : (((u64)1 << left) - 1);


        res += (((u64)*src++ >> bit_offset) & mask) << shift;
        shift += 8 - bit_offset;
        left -= 8 - bit_offset;
        bit_offset = 0;
    }

    return res;
}
