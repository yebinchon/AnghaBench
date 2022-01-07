
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_bucket {int dummy; } ;


 struct hash_bucket* calloc (int,int) ;

struct hash_bucket *
new_hash_bucket(void)
{
 struct hash_bucket *rval = calloc(1, sizeof(struct hash_bucket));

 return (rval);
}
