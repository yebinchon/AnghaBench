
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct group_entry {struct group_entry* next; void* data; void* key; } ;


 size_t hashkey (char*) ;
 scalar_t__ malloc (int) ;
 void* strdup (char*) ;

void
store(struct group_entry *table[], char *key, char *data)
{
 struct group_entry *new;
 u_int32_t i;

 i = hashkey(key);

 new = (struct group_entry *)malloc(sizeof(struct group_entry));
 new->key = strdup(key);
 new->data = strdup(data);
 new->next = table[i];
 table[i] = new;

 return;
}
