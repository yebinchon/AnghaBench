
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifmedia_type_to_subtype {TYPE_1__* subtypes; } ;
struct ifmedia_description {int ifmt_word; int * ifmt_string; } ;
struct TYPE_2__ {int * desc; } ;


 int errx (int,char*,...) ;
 struct ifmedia_description* ifm_type_descriptions ;
 struct ifmedia_type_to_subtype* ifmedia_types_to_subtypes ;
 int lookup_media_word (int *,char const*) ;

__attribute__((used)) static int
get_media_subtype(int type, const char *val)
{
 struct ifmedia_description *desc;
 struct ifmedia_type_to_subtype *ttos;
 int rval, i;


 for (desc = ifm_type_descriptions, ttos = ifmedia_types_to_subtypes;
     desc->ifmt_string != ((void*)0); desc++, ttos++)
  if (type == desc->ifmt_word)
   break;
 if (desc->ifmt_string == ((void*)0))
  errx(1, "unknown media type 0x%x", type);

 for (i = 0; ttos->subtypes[i].desc != ((void*)0); i++) {
  rval = lookup_media_word(ttos->subtypes[i].desc, val);
  if (rval != -1)
   return (rval);
 }
 errx(1, "unknown media subtype: %s", val);

}
