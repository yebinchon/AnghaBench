
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifmedia_type_to_subtype {TYPE_1__* modes; } ;
struct ifmedia_description {int ifmt_word; int * ifmt_string; } ;
struct TYPE_2__ {int * desc; } ;


 int errx (int,char*,int) ;
 struct ifmedia_description* ifm_type_descriptions ;
 struct ifmedia_type_to_subtype* ifmedia_types_to_subtypes ;
 int lookup_media_word (int *,char const*) ;

int
get_media_mode(int type, const char *val)
{
 struct ifmedia_description *desc;
 struct ifmedia_type_to_subtype *ttos;
 int rval, i;


 for (desc = ifm_type_descriptions, ttos = ifmedia_types_to_subtypes;
     desc->ifmt_string != ((void*)0); desc++, ttos++)
  if (type == desc->ifmt_word)
   break;
 if (desc->ifmt_string == ((void*)0))
  errx(1, "unknown media mode 0x%x", type);

 for (i = 0; ttos->modes[i].desc != ((void*)0); i++) {
  rval = lookup_media_word(ttos->modes[i].desc, val);
  if (rval != -1)
   return (rval);
 }
 return -1;
}
