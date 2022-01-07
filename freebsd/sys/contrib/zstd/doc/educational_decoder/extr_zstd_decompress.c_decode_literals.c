
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int istream_t ;
typedef int frame_context_t ;


 scalar_t__ IO_read_bits (int * const,int) ;
 size_t decode_literals_compressed (int * const,int * const,int ** const,int,int) ;
 size_t decode_literals_simple (int * const,int ** const,int,int) ;

__attribute__((used)) static size_t decode_literals(frame_context_t *const ctx, istream_t *const in,
                              u8 **const literals) {
    int block_type = (int)IO_read_bits(in, 2);
    int size_format = (int)IO_read_bits(in, 2);

    if (block_type <= 1) {

        return decode_literals_simple(in, literals, block_type,
                                      size_format);
    } else {

        return decode_literals_compressed(ctx, in, literals, block_type,
                                          size_format);
    }
}
