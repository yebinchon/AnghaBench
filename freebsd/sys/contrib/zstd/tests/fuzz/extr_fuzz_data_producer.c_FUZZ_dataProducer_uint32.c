
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_dataProducer_uint32Range (int *,int ,int) ;

uint32_t FUZZ_dataProducer_uint32(FUZZ_dataProducer_t *producer) {
    return FUZZ_dataProducer_uint32Range(producer, 0, 0xffffffff);
}
