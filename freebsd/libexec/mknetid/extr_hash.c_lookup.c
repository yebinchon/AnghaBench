
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct member_entry {struct member_entry* next; struct grouplist* groups; int key; } ;
struct grouplist {int dummy; } ;


 size_t hashkey (char*) ;
 int strcmp (int ,char*) ;

struct grouplist *lookup(struct member_entry *table[], char *key)
{
 struct member_entry *cur;

 cur = table[hashkey(key)];

 while (cur) {
  if (!strcmp(cur->key, key))
   return(cur->groups);
  cur = cur->next;
 }

 return(((void*)0));
}
