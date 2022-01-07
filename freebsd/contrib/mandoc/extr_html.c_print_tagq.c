
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct tag {struct tag const* next; } const tag ;
struct html {struct tag const* tag; } ;


 int print_ctag (struct html*,struct tag const*) ;

void
print_tagq(struct html *h, const struct tag *until)
{
 struct tag *this, *next;

 for (this = h->tag; this != ((void*)0); this = next) {
  next = this == until ? ((void*)0) : this->next;
  print_ctag(h, this);
 }
}
