
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifmedia_type_to_subtype {TYPE_1__* subtypes; } ;
struct ifmedia_description {scalar_t__ ifmt_word; int * ifmt_string; } ;
struct TYPE_2__ {struct ifmedia_description* desc; scalar_t__ alias; } ;


 scalar_t__ IFM_SUBTYPE (int) ;

__attribute__((used)) static struct ifmedia_description *
get_subtype_desc(int ifmw,
    struct ifmedia_type_to_subtype *ttos)
{
 int i;
 struct ifmedia_description *desc;

 for (i = 0; ttos->subtypes[i].desc != ((void*)0); i++) {
  if (ttos->subtypes[i].alias) {
   continue;
  }
  for (desc = ttos->subtypes[i].desc;
      desc->ifmt_string != ((void*)0); desc++) {
   if (IFM_SUBTYPE(ifmw) == desc->ifmt_word) {
    return (desc);
   }
  }
 }

 return (((void*)0));
}
