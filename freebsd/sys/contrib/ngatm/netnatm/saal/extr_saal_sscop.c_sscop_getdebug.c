
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sscop {int debug; } ;



u_int
sscop_getdebug(const struct sscop *sscop)
{
 return (sscop->debug);
}
