
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {struct hash_bucket** buckets; int hash_count; } ;
struct hash_bucket {int len; void* value; int name; struct hash_bucket* next; } ;


 int do_hash (unsigned char*,int,int ) ;
 int memcmp (int ,unsigned char*,int) ;
 int strlen (char*) ;

void *
hash_lookup(struct hash_table *table, unsigned char *name, int len)
{
 struct hash_bucket *bp;
 int hashno;

 if (!table)
  return (((void*)0));

 if (!len)
  len = strlen((char *)name);

 hashno = do_hash(name, len, table->hash_count);

 for (bp = table->buckets[hashno]; bp; bp = bp->next)
  if (len == bp->len && !memcmp(bp->name, name, len))
   return (bp->value);

 return (((void*)0));
}
