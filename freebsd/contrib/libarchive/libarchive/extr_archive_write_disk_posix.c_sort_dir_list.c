
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixup_entry {struct fixup_entry* next; int name; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static struct fixup_entry *
sort_dir_list(struct fixup_entry *p)
{
 struct fixup_entry *a, *b, *t;

 if (p == ((void*)0))
  return (((void*)0));

 if (p->next == ((void*)0))
  return (p);


 t = p;
 a = p->next->next;
 while (a != ((void*)0)) {

  a = a->next;
  if (a != ((void*)0))
   a = a->next;
  t = t->next;
 }

 b = t->next;
 t->next = ((void*)0);
 a = p;


 a = sort_dir_list(a);
 b = sort_dir_list(b);



 if (strcmp(a->name, b->name) > 0) {
  t = p = a;
  a = a->next;
 } else {
  t = p = b;
  b = b->next;
 }


 while (a != ((void*)0) && b != ((void*)0)) {
  if (strcmp(a->name, b->name) > 0) {
   t->next = a;
   a = a->next;
  } else {
   t->next = b;
   b = b->next;
  }
  t = t->next;
 }


 if (a != ((void*)0))
  t->next = a;
 if (b != ((void*)0))
  t->next = b;

 return (p);
}
