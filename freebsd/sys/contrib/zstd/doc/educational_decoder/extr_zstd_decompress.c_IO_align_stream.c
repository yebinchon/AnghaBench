
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bit_offset; scalar_t__ len; int ptr; } ;
typedef TYPE_1__ istream_t ;


 int INP_SIZE () ;

__attribute__((used)) static inline void IO_align_stream(istream_t *const in) {
    if (in->bit_offset != 0) {
        if (in->len == 0) {
            INP_SIZE();
        }
        in->ptr++;
        in->len--;
        in->bit_offset = 0;
    }
}
