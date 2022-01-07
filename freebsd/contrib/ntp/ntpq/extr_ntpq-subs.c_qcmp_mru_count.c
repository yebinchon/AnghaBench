
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
typedef TYPE_1__ mru ;



__attribute__((used)) static int
qcmp_mru_count(
 const void *v1,
 const void *v2
 )
{
 const mru * const * ppm1 = v1;
 const mru * const * ppm2 = v2;
 const mru * pm1;
 const mru * pm2;

 pm1 = *ppm1;
 pm2 = *ppm2;

 return (pm1->count < pm2->count)
     ? -1
     : ((pm1->count == pm2->count)
     ? 0
     : 1);
}
