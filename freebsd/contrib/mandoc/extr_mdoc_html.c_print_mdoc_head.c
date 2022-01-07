
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_meta {int title; int * arch; int * msec; } ;
struct html {int dummy; } ;


 int TAG_TITLE ;
 int free (char*) ;
 int mandoc_asprintf (char**,char*,int ,int *,...) ;
 char* mandoc_strdup (int ) ;
 int print_gen_head (struct html*) ;
 int print_otag (struct html*,int ,char*) ;
 int print_text (struct html*,char*) ;

__attribute__((used)) static void
print_mdoc_head(const struct roff_meta *meta, struct html *h)
{
 char *cp;

 print_gen_head(h);

 if (meta->arch != ((void*)0) && meta->msec != ((void*)0))
  mandoc_asprintf(&cp, "%s(%s) (%s)", meta->title,
      meta->msec, meta->arch);
 else if (meta->msec != ((void*)0))
  mandoc_asprintf(&cp, "%s(%s)", meta->title, meta->msec);
 else if (meta->arch != ((void*)0))
  mandoc_asprintf(&cp, "%s (%s)", meta->title, meta->arch);
 else
  cp = mandoc_strdup(meta->title);

 print_otag(h, TAG_TITLE, "");
 print_text(h, cp);
 free(cp);
}
