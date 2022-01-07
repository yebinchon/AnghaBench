
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u_int32_t ;
struct TYPE_3__ {unsigned int (* hash ) (char*,int) ;unsigned int HIGH_MASK; unsigned int MAX_BUCKET; unsigned int LOW_MASK; } ;
typedef TYPE_1__ HTAB ;


 unsigned int stub1 (char*,int) ;

u_int32_t
__call_hash(HTAB *hashp, char *k, int len)
{
 unsigned int n, bucket;

 n = hashp->hash(k, len);
 bucket = n & hashp->HIGH_MASK;
 if (bucket > hashp->MAX_BUCKET)
  bucket = bucket & hashp->LOW_MASK;
 return (bucket);
}
