
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sscfu {int debug; } ;



u_int
sscfu_getdebug(const struct sscfu *sscf)
{
 return (sscf->debug);
}
