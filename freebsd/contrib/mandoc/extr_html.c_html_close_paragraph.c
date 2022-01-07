
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {scalar_t__ closed; int tag; struct tag* next; } ;
struct html {struct tag* tag; } ;





 int print_tagq (struct html*,struct tag*) ;

void
html_close_paragraph(struct html *h)
{
 struct tag *t;

 for (t = h->tag; t != ((void*)0) && t->closed == 0; t = t->next) {
  switch(t->tag) {
  case 129:
  case 128:
   print_tagq(h, t);
   break;
  case 130:
   print_tagq(h, t);
   continue;
  default:
   continue;
  }
  break;
 }
}
