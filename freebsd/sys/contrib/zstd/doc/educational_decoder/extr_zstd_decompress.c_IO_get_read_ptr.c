
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {size_t len; scalar_t__ bit_offset; int * ptr; } ;
typedef TYPE_1__ istream_t ;


 int ERROR (char*) ;
 int INP_SIZE () ;

__attribute__((used)) static inline const u8 *IO_get_read_ptr(istream_t *const in, size_t len) {
    if (len > in->len) {
        INP_SIZE();
    }
    if (in->bit_offset != 0) {
        ERROR("Attempting to operate on a non-byte aligned stream");
    }
    const u8 *const ptr = in->ptr;
    in->ptr += len;
    in->len -= len;

    return ptr;
}
