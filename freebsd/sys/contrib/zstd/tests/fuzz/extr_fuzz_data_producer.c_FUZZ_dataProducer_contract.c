
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; scalar_t__ data; } ;
typedef TYPE_1__ FUZZ_dataProducer_t ;



size_t FUZZ_dataProducer_contract(FUZZ_dataProducer_t *producer, size_t newSize)
{
    newSize = newSize > producer->size ? producer->size : newSize;

    size_t remaining = producer->size - newSize;
    producer->data = producer->data + remaining;
    producer->size = newSize;
    return remaining;
}
