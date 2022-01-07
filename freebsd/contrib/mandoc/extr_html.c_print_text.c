
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {int flags; int * metaf; scalar_t__ col; } ;


 int HTML_IGNDELIM ;
 int HTML_KEEP ;
 int HTML_NONEWLINE ;
 int HTML_NONOSPACE ;
 int HTML_NOSPACE ;
 int HTML_PREKEEP ;
 int assert (int ) ;
 int print_encode (struct html*,char const*,int *,int ) ;
 int print_endword (struct html*) ;
 int print_indent (struct html*) ;
 int print_metaf (struct html*) ;
 int print_tagq (struct html*,int *) ;
 int print_word (struct html*,char*) ;

void
print_text(struct html *h, const char *word)
{
 if (h->col && (h->flags & HTML_NOSPACE) == 0) {
  if ( ! (HTML_KEEP & h->flags)) {
   if (HTML_PREKEEP & h->flags)
    h->flags |= HTML_KEEP;
   print_endword(h);
  } else
   print_word(h, "&#x00A0;");
 }

 assert(h->metaf == ((void*)0));
 print_metaf(h);
 print_indent(h);
 if ( ! print_encode(h, word, ((void*)0), 0)) {
  if ( ! (h->flags & HTML_NONOSPACE))
   h->flags &= ~HTML_NOSPACE;
  h->flags &= ~HTML_NONEWLINE;
 } else
  h->flags |= HTML_NOSPACE | HTML_NONEWLINE;

 if (h->metaf != ((void*)0)) {
  print_tagq(h, h->metaf);
  h->metaf = ((void*)0);
 }

 h->flags &= ~HTML_IGNDELIM;
}
