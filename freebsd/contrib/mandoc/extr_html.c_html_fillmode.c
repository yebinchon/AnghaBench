
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {scalar_t__ tag; struct tag* next; } ;
struct html {struct tag* tag; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;




 scalar_t__ TAG_PRE ;

 int abort () ;
 int html_close_paragraph (struct html*) ;
 int print_otag (struct html*,scalar_t__,char*) ;
 int print_tagq (struct html*,struct tag*) ;

enum roff_tok
html_fillmode(struct html *h, enum roff_tok want)
{
 struct tag *t;
 enum roff_tok had;

 for (t = h->tag; t != ((void*)0); t = t->next)
  if (t->tag == TAG_PRE)
   break;

 had = t == ((void*)0) ? 130 : 129;

 if (want != had) {
  switch (want) {
  case 130:
   print_tagq(h, t);
   break;
  case 129:
   html_close_paragraph(h);
   print_otag(h, TAG_PRE, "");
   break;
  case 128:
   break;
  default:
   abort();
  }
 }
 return had;
}
