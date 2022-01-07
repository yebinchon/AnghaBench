
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; } ;
typedef TYPE_1__ FUZZ_dataProducer_t ;


 size_t FUZZ_dataProducer_contract (TYPE_1__*,size_t) ;
 size_t FUZZ_dataProducer_uint32Range (TYPE_1__*,int ,int ) ;

size_t FUZZ_dataProducer_reserveDataPrefix(FUZZ_dataProducer_t *producer)
{
    size_t producerSliceSize = FUZZ_dataProducer_uint32Range(
                                  producer, 0, producer->size);
    return FUZZ_dataProducer_contract(producer, producerSliceSize);
}
