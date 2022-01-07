
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int bswap64 (int ) ;

__attribute__((used)) static void
byteswap256(uint64_t *buffer)
{
 uint64_t t;

 t = bswap64(buffer[3]);
 buffer[3] = bswap64(buffer[0]);
 buffer[0] = t;

 t = bswap64(buffer[2]);
 buffer[2] = bswap64(buffer[1]);
 buffer[1] = t;
}
