
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int u_int ;


 int MIN (int,int) ;
 int NBBY ;

__attribute__((used)) static uint32_t
rsb_encode(const uint8_t *buf, u_int len, u_int off)
{
 uint32_t val;
 u_int n;

 val = 0;
 for (n = off; n < MIN(len, 4 + off); n++)
  val |= ((uint32_t)buf[n] << ((n - off) * NBBY));

 return val;
}
