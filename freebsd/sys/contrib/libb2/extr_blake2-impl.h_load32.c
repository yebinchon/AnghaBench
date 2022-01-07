
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t load32( const void *src )
{



  const uint8_t *p = ( uint8_t * )src;
  uint32_t w = *p++;
  w |= ( uint32_t )( *p++ ) << 8;
  w |= ( uint32_t )( *p++ ) << 16;
  w |= ( uint32_t )( *p++ ) << 24;
  return w;

}
