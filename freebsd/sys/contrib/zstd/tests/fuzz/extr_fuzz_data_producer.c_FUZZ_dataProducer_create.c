
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t size; int const* data; } ;
typedef TYPE_1__ FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (int ) ;
 TYPE_1__* malloc (int) ;

FUZZ_dataProducer_t *FUZZ_dataProducer_create(const uint8_t *data, size_t size) {
    FUZZ_dataProducer_t *producer = malloc(sizeof(FUZZ_dataProducer_t));

    FUZZ_ASSERT(producer != ((void*)0));

    producer->data = data;
    producer->size = size;
    return producer;
}
