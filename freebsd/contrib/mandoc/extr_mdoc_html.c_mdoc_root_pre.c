
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int dummy; } ;
struct roff_meta {int * msec; int title; int * arch; int vol; } ;
struct html {int dummy; } ;


 int TAG_TABLE ;
 int TAG_TD ;
 int TAG_TR ;
 int free (char*) ;
 int mandoc_asprintf (char**,char*,int ,int *) ;
 char* mandoc_strdup (int ) ;
 struct tag* print_otag (struct html*,int ,char*,...) ;
 int print_stagq (struct html*,struct tag*) ;
 int print_tagq (struct html*,struct tag*) ;
 int print_text (struct html*,char*) ;

__attribute__((used)) static int
mdoc_root_pre(const struct roff_meta *meta, struct html *h)
{
 struct tag *t, *tt;
 char *volume, *title;

 if (((void*)0) == meta->arch)
  volume = mandoc_strdup(meta->vol);
 else
  mandoc_asprintf(&volume, "%s (%s)",
      meta->vol, meta->arch);

 if (((void*)0) == meta->msec)
  title = mandoc_strdup(meta->title);
 else
  mandoc_asprintf(&title, "%s(%s)",
      meta->title, meta->msec);

 t = print_otag(h, TAG_TABLE, "c", "head");
 tt = print_otag(h, TAG_TR, "");

 print_otag(h, TAG_TD, "c", "head-ltitle");
 print_text(h, title);
 print_stagq(h, tt);

 print_otag(h, TAG_TD, "c", "head-vol");
 print_text(h, volume);
 print_stagq(h, tt);

 print_otag(h, TAG_TD, "c", "head-rtitle");
 print_text(h, title);
 print_tagq(h, t);

 free(title);
 free(volume);
 return 1;
}
