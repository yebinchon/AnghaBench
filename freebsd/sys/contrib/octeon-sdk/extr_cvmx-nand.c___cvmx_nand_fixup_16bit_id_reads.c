
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void __cvmx_nand_fixup_16bit_id_reads(uint8_t *buf, int buffer_length)
{

    int i;
    for (i = 0; i < buffer_length/2; i++)
        buf[i] = buf[2*i + 1];
}
