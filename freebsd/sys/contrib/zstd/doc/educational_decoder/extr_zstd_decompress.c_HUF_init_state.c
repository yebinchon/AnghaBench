
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
typedef int i64 ;
struct TYPE_3__ {int max_bits; } ;
typedef TYPE_1__ HUF_dtable ;


 int STREAM_read_bits (int const* const,int const,int * const) ;

__attribute__((used)) static inline void HUF_init_state(const HUF_dtable *const dtable,
                                  u16 *const state, const u8 *const src,
                                  i64 *const offset) {

    const u8 bits = dtable->max_bits;
    *state = STREAM_read_bits(src, bits, offset);
}
