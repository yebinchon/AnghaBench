
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; scalar_t__ bit_offset; size_t ptr; } ;
typedef TYPE_1__ istream_t ;


 int ERROR (char*) ;
 int INP_SIZE () ;

__attribute__((used)) static inline void IO_advance_input(istream_t *const in, size_t len) {
    if (len > in->len) {
         INP_SIZE();
    }
    if (in->bit_offset != 0) {
        ERROR("Attempting to operate on a non-byte aligned stream");
    }

    in->ptr += len;
    in->len -= len;
}
