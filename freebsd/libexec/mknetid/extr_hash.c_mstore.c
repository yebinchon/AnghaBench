
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct member_entry {struct member_entry* next; struct grouplist* groups; int key; } ;
struct grouplist {int groupid; struct grouplist* next; } ;


 int dummy ;
 size_t hashkey (char*) ;
 scalar_t__ malloc (int) ;
 int strcmp (int ,char*) ;
 int strdup (char*) ;

void mstore (struct member_entry *table[], char *key, int gid, int dup)
{
 struct member_entry *cur, *new;
 struct grouplist *tmp;
 u_int32_t i;

 i = hashkey(key);
 cur = table[i];

 if (!dup) {
  tmp = (struct grouplist *)malloc(sizeof(struct grouplist));
  tmp->groupid = gid;
  tmp->next = ((void*)0);
 }


 while (cur) {
  if (!dup && !strcmp(cur->key, key)) {
   tmp->next = cur->groups;
   cur->groups = tmp;
   return;
  }
  cur = cur->next;
 }


 new = (struct member_entry *)malloc(sizeof(struct member_entry));
 new->key = strdup(key);
 if (!dup)
  new->groups = tmp;
 else
  new->groups = (struct grouplist *)&dummy;
 new->next = table[i];
 table[i] = new;

 return;
}
