
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {int metac; int * metaf; } ;






 int TAG_B ;
 int TAG_I ;
 int TAG_SPAN ;
 void* print_otag (struct html*,int ,char*,...) ;
 int print_tagq (struct html*,int *) ;

__attribute__((used)) static void
print_metaf(struct html *h)
{
 if (h->metaf) {
  print_tagq(h, h->metaf);
  h->metaf = ((void*)0);
 }
 switch (h->metac) {
 case 128:
  h->metaf = print_otag(h, TAG_I, "");
  break;
 case 130:
  h->metaf = print_otag(h, TAG_B, "");
  break;
 case 131:
  h->metaf = print_otag(h, TAG_B, "");
  print_otag(h, TAG_I, "");
  break;
 case 129:
  h->metaf = print_otag(h, TAG_SPAN, "c", "Li");
  break;
 default:
  break;
 }
}
