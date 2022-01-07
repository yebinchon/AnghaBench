
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ u_int16_t ;


 scalar_t__ ntohs (scalar_t__) ;

u_int32_t
checksum(unsigned char *buf, unsigned nbytes, u_int32_t sum)
{
 unsigned i;


 for (i = 0; i < (nbytes & ~1U); i += 2) {
  sum += (u_int16_t)ntohs(*((u_int16_t *)(buf + i)));
  if (sum > 0xFFFF)
   sum -= 0xFFFF;
 }






 if (i < nbytes) {
  sum += buf[i] << 8;
  if (sum > 0xFFFF)
   sum -= 0xFFFF;
 }

 return (sum);
}
