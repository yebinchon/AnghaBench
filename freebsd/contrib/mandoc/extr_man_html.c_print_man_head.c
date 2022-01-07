
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_meta {int msec; int title; } ;
struct html {int dummy; } ;


 int TAG_TITLE ;
 int free (char*) ;
 int mandoc_asprintf (char**,char*,int ,int ) ;
 int print_gen_head (struct html*) ;
 int print_otag (struct html*,int ,char*) ;
 int print_text (struct html*,char*) ;

__attribute__((used)) static void
print_man_head(const struct roff_meta *man, struct html *h)
{
 char *cp;

 print_gen_head(h);
 mandoc_asprintf(&cp, "%s(%s)", man->title, man->msec);
 print_otag(h, TAG_TITLE, "");
 print_text(h, cp);
 free(cp);
}
