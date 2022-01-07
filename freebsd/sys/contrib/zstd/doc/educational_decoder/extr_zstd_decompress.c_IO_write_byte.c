
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ len; int * ptr; } ;
typedef TYPE_1__ ostream_t ;


 int OUT_SIZE () ;

__attribute__((used)) static inline void IO_write_byte(ostream_t *const out, u8 symb) {
    if (out->len == 0) {
        OUT_SIZE();
    }

    out->ptr[0] = symb;
    out->ptr++;
    out->len--;
}
