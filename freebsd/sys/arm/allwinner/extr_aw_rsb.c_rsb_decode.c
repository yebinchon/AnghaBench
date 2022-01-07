
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint32_t ;
typedef size_t u_int ;


 size_t MIN (size_t,size_t) ;
 size_t NBBY ;

__attribute__((used)) static void
rsb_decode(const uint32_t val, uint8_t *buf, u_int len, u_int off)
{
 u_int n;

 for (n = off; n < MIN(len, 4 + off); n++)
  buf[n] = (val >> ((n - off) * NBBY)) & 0xff;
}
