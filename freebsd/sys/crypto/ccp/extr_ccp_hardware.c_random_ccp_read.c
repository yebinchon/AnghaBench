
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_int ;


 int KASSERT (int,char*) ;
 int MAX_TRNG_RETRIES ;
 int TRNG_OUT_OFFSET ;
 scalar_t__ ccp_read_4 (int ,int ) ;
 int g_ccp_softc ;

u_int
random_ccp_read(void *v, u_int c)
{
 uint32_t *buf;
 u_int i, j;

 KASSERT(c % sizeof(*buf) == 0, ("%u not multiple of u_long", c));

 buf = v;
 for (i = c; i > 0; i -= sizeof(*buf)) {
  for (j = 0; j < MAX_TRNG_RETRIES; j++) {
   *buf = ccp_read_4(g_ccp_softc, TRNG_OUT_OFFSET);
   if (*buf != 0)
    break;
  }
  if (j == MAX_TRNG_RETRIES)
   return (0);
  buf++;
 }
 return (c);

}
