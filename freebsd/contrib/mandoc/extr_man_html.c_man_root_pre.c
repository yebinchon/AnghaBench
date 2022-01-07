
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int dummy; } ;
struct roff_meta {char* vol; int msec; int title; } ;
struct html {int dummy; } ;


 int TAG_TABLE ;
 int TAG_TD ;
 int TAG_TR ;
 int assert (int ) ;
 int free (char*) ;
 int mandoc_asprintf (char**,char*,int ,int ) ;
 struct tag* print_otag (struct html*,int ,char*,...) ;
 int print_stagq (struct html*,struct tag*) ;
 int print_tagq (struct html*,struct tag*) ;
 int print_text (struct html*,char*) ;

__attribute__((used)) static void
man_root_pre(const struct roff_meta *man, struct html *h)
{
 struct tag *t, *tt;
 char *title;

 assert(man->title);
 assert(man->msec);
 mandoc_asprintf(&title, "%s(%s)", man->title, man->msec);

 t = print_otag(h, TAG_TABLE, "c", "head");
 tt = print_otag(h, TAG_TR, "");

 print_otag(h, TAG_TD, "c", "head-ltitle");
 print_text(h, title);
 print_stagq(h, tt);

 print_otag(h, TAG_TD, "c", "head-vol");
 if (man->vol != ((void*)0))
  print_text(h, man->vol);
 print_stagq(h, tt);

 print_otag(h, TAG_TD, "c", "head-rtitle");
 print_text(h, title);
 print_tagq(h, t);
 free(title);
}
