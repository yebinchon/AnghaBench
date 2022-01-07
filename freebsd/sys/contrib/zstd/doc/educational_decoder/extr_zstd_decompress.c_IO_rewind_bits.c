
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bit_offset; int len; int ptr; } ;
typedef TYPE_1__ istream_t ;
typedef int i64 ;


 int ERROR (char*) ;

__attribute__((used)) static inline void IO_rewind_bits(istream_t *const in, int num_bits) {
    if (num_bits < 0) {
        ERROR("Attempting to rewind stream by a negative number of bits");
    }


    const int new_offset = in->bit_offset - num_bits;


    const i64 bytes = -(new_offset - 7) / 8;

    in->ptr -= bytes;
    in->len += bytes;


    in->bit_offset = ((new_offset % 8) + 8) % 8;
}
