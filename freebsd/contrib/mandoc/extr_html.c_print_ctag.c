
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tag {int closed; size_t tag; scalar_t__ refcnt; int next; } ;
struct html {int tag; int noindent; int indent; struct tag* tblt; struct tag* metaf; } ;
struct TYPE_2__ {int flags; int name; } ;


 int HTML_INDENT ;
 int HTML_NLAFTER ;
 int HTML_NLEND ;
 int HTML_NOINDENT ;
 int free (struct tag*) ;
 TYPE_1__* htmltags ;
 int print_byte (struct html*,char) ;
 int print_endline (struct html*) ;
 int print_indent (struct html*) ;
 int print_word (struct html*,int ) ;

__attribute__((used)) static void
print_ctag(struct html *h, struct tag *tag)
{
 int tflags;

 if (tag->closed == 0) {
  tag->closed = 1;
  if (tag == h->metaf)
   h->metaf = ((void*)0);
  if (tag == h->tblt)
   h->tblt = ((void*)0);

  tflags = htmltags[tag->tag].flags;
  if (tflags & HTML_INDENT)
   h->indent--;
  if (tflags & HTML_NOINDENT)
   h->noindent--;
  if (tflags & HTML_NLEND)
   print_endline(h);
  print_indent(h);
  print_byte(h, '<');
  print_byte(h, '/');
  print_word(h, htmltags[tag->tag].name);
  print_byte(h, '>');
  if (tflags & HTML_NLAFTER)
   print_endline(h);
 }
 if (tag->refcnt == 0) {
  h->tag = tag->next;
  free(tag);
 }
}
