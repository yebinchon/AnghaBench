
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ASSERT (int) ;
 int BSWAP_16 (int ) ;

void
byteswap_uint16_array(void *vbuf, size_t size)
{
 uint16_t *buf = vbuf;
 size_t count = size >> 1;
 int i;

 ASSERT((size & 1) == 0);

 for (i = 0; i < count; i++)
  buf[i] = BSWAP_16(buf[i]);
}
