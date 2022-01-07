
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ASSERT (int) ;
 int BSWAP_64 (int ) ;

__attribute__((used)) static void
byteswap_uint64_array(void *vbuf, size_t size)
{
 uint64_t *buf = vbuf;
 size_t count = size >> 3;
 int i;

 ASSERT((size & 7) == 0);

 for (i = 0; i < count; i++)
  buf[i] = BSWAP_64(buf[i]);
}
