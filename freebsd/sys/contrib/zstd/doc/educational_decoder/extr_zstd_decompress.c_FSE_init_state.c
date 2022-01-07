
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
typedef int i64 ;
struct TYPE_3__ {int accuracy_log; } ;
typedef TYPE_1__ FSE_dtable ;


 int STREAM_read_bits (int const* const,int const,int * const) ;

__attribute__((used)) static inline void FSE_init_state(const FSE_dtable *const dtable,
                                  u16 *const state, const u8 *const src,
                                  i64 *const offset) {

    const u8 bits = dtable->accuracy_log;
    *state = STREAM_read_bits(src, bits, offset);
}
