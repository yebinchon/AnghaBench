
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_entry {char* data; struct group_entry* next; int key; } ;


 size_t hashkey (char*) ;
 int strcmp (int ,char*) ;

char *
lookup(struct group_entry *table[], char *key)
{
 struct group_entry *cur;

 cur = table[hashkey(key)];

 while (cur) {
  if (!strcmp(cur->key, key))
   return(cur->data);
  cur = cur->next;
 }

 return(((void*)0));
}
