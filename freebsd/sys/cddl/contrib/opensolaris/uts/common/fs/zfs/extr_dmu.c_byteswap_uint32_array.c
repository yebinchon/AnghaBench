
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ASSERT (int) ;
 int BSWAP_32 (int ) ;

void
byteswap_uint32_array(void *vbuf, size_t size)
{
 uint32_t *buf = vbuf;
 size_t count = size >> 2;
 int i;

 ASSERT((size & 3) == 0);

 for (i = 0; i < count; i++)
  buf[i] = BSWAP_32(buf[i]);
}
