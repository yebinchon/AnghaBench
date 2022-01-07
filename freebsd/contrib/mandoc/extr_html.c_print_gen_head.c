
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int dummy; } ;
struct html {int * style; } ;


 int TAG_LINK ;
 int TAG_META ;
 int TAG_STYLE ;
 int print_byte (struct html*,char) ;
 int print_endline (struct html*) ;
 struct tag* print_otag (struct html*,int ,char*,...) ;
 int print_tagq (struct html*,struct tag*) ;
 int print_text (struct html*,char*) ;

void
print_gen_head(struct html *h)
{
 struct tag *t;

 print_otag(h, TAG_META, "?", "charset", "utf-8");
 if (h->style != ((void*)0)) {
  print_otag(h, TAG_LINK, "?h??", "rel", "stylesheet",
      h->style, "type", "text/css", "media", "all");
  return;
 }





 t = print_otag(h, TAG_STYLE, "");
 print_text(h, "table.head, table.foot { width: 100%; }");
 print_endline(h);
 print_text(h, "td.head-rtitle, td.foot-os { text-align: right; }");
 print_endline(h);
 print_text(h, "td.head-vol { text-align: center; }");
 print_endline(h);
 print_text(h, "div.Pp { margin: 1ex 0ex; }");
 print_endline(h);
 print_text(h, "div.Nd, div.Bf, div.Op { display: inline; }");
 print_endline(h);
 print_text(h, "span.Pa, span.Ad { font-style: italic; }");
 print_endline(h);
 print_text(h, "span.Ms { font-weight: bold; }");
 print_endline(h);
 print_text(h, "dl.Bl-diag ");
 print_byte(h, '>');
 print_text(h, " dt { font-weight: bold; }");
 print_endline(h);
 print_text(h, "code.Nm, code.Fl, code.Cm, code.Ic, "
     "code.In, code.Fd, code.Fn,");
 print_endline(h);
 print_text(h, "code.Cd { font-weight: bold; "
     "font-family: inherit; }");
 print_tagq(h, t);
}
