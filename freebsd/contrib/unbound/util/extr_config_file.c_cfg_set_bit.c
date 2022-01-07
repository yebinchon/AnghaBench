
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int log_assert (int) ;

__attribute__((used)) static void
cfg_set_bit(uint8_t* bitlist, size_t len, int id)
{
 int pos = id/8;
 log_assert((size_t)pos < len);
 (void)len;
 bitlist[pos] |= 1<<(id%8);
}
