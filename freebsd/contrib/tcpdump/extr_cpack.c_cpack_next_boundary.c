
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



const uint8_t *
cpack_next_boundary(const uint8_t *buf, const uint8_t *p, size_t alignment)
{
 size_t misalignment = (size_t)(p - buf) % alignment;

 if (misalignment == 0)
  return p;

 return p + (alignment - misalignment);
}
