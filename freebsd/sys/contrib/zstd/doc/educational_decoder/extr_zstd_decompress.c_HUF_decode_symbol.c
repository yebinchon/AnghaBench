
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
typedef int i64 ;
struct TYPE_3__ {size_t* symbols; size_t* num_bits; size_t max_bits; } ;
typedef TYPE_1__ HUF_dtable ;


 size_t STREAM_read_bits (size_t const* const,size_t const,int * const) ;

__attribute__((used)) static inline u8 HUF_decode_symbol(const HUF_dtable *const dtable,
                                   u16 *const state, const u8 *const src,
                                   i64 *const offset) {

    const u8 symb = dtable->symbols[*state];
    const u8 bits = dtable->num_bits[*state];
    const u16 rest = STREAM_read_bits(src, bits, offset);



    *state = ((*state << bits) + rest) & (((u16)1 << dtable->max_bits) - 1);

    return symb;
}
