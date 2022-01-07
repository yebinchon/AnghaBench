
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia_description {scalar_t__ ifmt_word; int * ifmt_string; } ;


 scalar_t__ IFM_TYPE (int) ;
 struct ifmedia_description* ifm_type_descriptions ;

__attribute__((used)) static struct ifmedia_description *
get_toptype_desc(int ifmw)
{
 struct ifmedia_description *desc;

 for (desc = ifm_type_descriptions; desc->ifmt_string != ((void*)0); desc++) {
  if (IFM_TYPE(ifmw) == desc->ifmt_word) {
   break;
  }
 }

 return (desc);
}
