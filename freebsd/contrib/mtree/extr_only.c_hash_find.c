
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct hentry {size_t hash; int str; struct hentry* next; } ;


 size_t __arraycount (struct hentry**) ;
 size_t hash_str (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;
 struct hentry** table ;

__attribute__((used)) static bool
hash_find(const char *str, uint32_t *h)
{
 struct hentry *e;
 *h = hash_str(str) % __arraycount(table);

 for (e = table[*h]; e; e = e->next)
  if (e->hash == *h && strcmp(e->str, str) == 0)
   return 1;
 return 0;
}
