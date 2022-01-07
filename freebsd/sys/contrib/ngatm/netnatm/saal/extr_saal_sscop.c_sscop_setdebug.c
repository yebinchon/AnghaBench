
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sscop {int debug; } ;



void
sscop_setdebug(struct sscop *sscop, u_int n)
{
 sscop->debug = n;
}
