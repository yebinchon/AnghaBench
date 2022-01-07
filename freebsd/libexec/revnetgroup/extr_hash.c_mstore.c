
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct member_entry {char* key; char* domain; struct member_entry* next; struct grouplist* groups; } ;
struct grouplist {char* groupname; struct grouplist* next; } ;


 size_t hashkey (char*) ;
 scalar_t__ malloc (int) ;
 int strcmp (char*,char*) ;
 char* strdup (char*) ;

void
mstore(struct member_entry *table[], char *key, char *data, char *domain)
{
 struct member_entry *cur, *new;
 struct grouplist *tmp;
 u_int32_t i;

 i = hashkey(key);
 cur = table[i];

 tmp = (struct grouplist *)malloc(sizeof(struct grouplist));
 tmp->groupname = strdup(data);
 tmp->next = ((void*)0);


 while (cur) {
  if (!strcmp(cur->key, key)) {
   tmp->next = cur->groups;
   cur->groups = tmp;
   return;
  }
  cur = cur->next;
 }


 new = (struct member_entry *)malloc(sizeof(struct member_entry));
 new->key = strdup(key);
 new->domain = domain ? strdup(domain) : "*";
 new->groups = tmp;
 new->next = table[i];
 table[i] = new;

 return;
}
