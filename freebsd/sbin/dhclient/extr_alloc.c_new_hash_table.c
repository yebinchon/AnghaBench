
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {int hash_count; } ;
struct hash_bucket {int dummy; } ;


 int DEFAULT_HASH_SIZE ;
 struct hash_table* calloc (int,int) ;

struct hash_table *
new_hash_table(int count)
{
 struct hash_table *rval;

 rval = calloc(1, sizeof(struct hash_table) -
     (DEFAULT_HASH_SIZE * sizeof(struct hash_bucket *)) +
     (count * sizeof(struct hash_bucket *)));
 if (rval == ((void*)0))
  return (((void*)0));
 rval->hash_count = count;
 return (rval);
}
