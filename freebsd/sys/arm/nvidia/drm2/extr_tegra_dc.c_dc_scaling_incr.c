
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
dc_scaling_incr(uint32_t src, uint32_t dst, uint32_t maxscale)
{
 uint32_t val;

 val = (src - 1) << 12 ;
 val /= (dst - 1);
 if (val > (maxscale << 12))
  val = maxscale << 12;
 return val;
}
