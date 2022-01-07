
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; int data; } ;
typedef TYPE_1__ data_buffer_t ;


 int assert (int) ;
 int memcmp (int ,int ,size_t const) ;

int data_buffer_compare(data_buffer_t buffer1, data_buffer_t buffer2) {
    size_t const size =
        buffer1.size < buffer2.size ? buffer1.size : buffer2.size;
    int const cmp = memcmp(buffer1.data, buffer2.data, size);
    if (cmp != 0)
        return cmp;
    if (buffer1.size < buffer2.size)
        return -1;
    if (buffer1.size == buffer2.size)
        return 0;
    assert(buffer1.size > buffer2.size);
    return 1;
}
