
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int dummy; } ;
struct roff_meta {int * os; int * date; } ;
struct html {int dummy; } ;


 int TAG_TABLE ;
 int TAG_TD ;
 int TAG_TR ;
 struct tag* print_otag (struct html*,int ,char*,...) ;
 int print_stagq (struct html*,struct tag*) ;
 int print_tagq (struct html*,struct tag*) ;
 int print_text (struct html*,int *) ;

__attribute__((used)) static void
man_root_post(const struct roff_meta *man, struct html *h)
{
 struct tag *t, *tt;

 t = print_otag(h, TAG_TABLE, "c", "foot");
 tt = print_otag(h, TAG_TR, "");

 print_otag(h, TAG_TD, "c", "foot-date");
 print_text(h, man->date);
 print_stagq(h, tt);

 print_otag(h, TAG_TD, "c", "foot-os");
 if (man->os != ((void*)0))
  print_text(h, man->os);
 print_tagq(h, t);
}
