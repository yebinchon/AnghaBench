
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifmedia_type_to_subtype {TYPE_1__* options; } ;
struct ifmedia_description {int ifmt_word; int * ifmt_string; } ;
struct TYPE_2__ {int * desc; } ;


 int err (int,char*) ;
 int errx (int,char*,...) ;
 int free (char*) ;
 struct ifmedia_description* ifm_type_descriptions ;
 struct ifmedia_type_to_subtype* ifmedia_types_to_subtypes ;
 int lookup_media_word (int *,char*) ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int
get_media_options(int type, const char *val)
{
 struct ifmedia_description *desc;
 struct ifmedia_type_to_subtype *ttos;
 char *optlist, *optptr;
 int option = 0, i, rval = 0;


 optlist = strdup(val);
 if (optlist == ((void*)0))
  err(1, "strdup");


 for (desc = ifm_type_descriptions, ttos = ifmedia_types_to_subtypes;
     desc->ifmt_string != ((void*)0); desc++, ttos++)
  if (type == desc->ifmt_word)
   break;
 if (desc->ifmt_string == ((void*)0))
  errx(1, "unknown media type 0x%x", type);





 optptr = optlist;
 for (; (optptr = strtok(optptr, ",")) != ((void*)0); optptr = ((void*)0)) {
  for (i = 0; ttos->options[i].desc != ((void*)0); i++) {
   option = lookup_media_word(ttos->options[i].desc, optptr);
   if (option != -1)
    break;
  }
  if (option == 0)
   errx(1, "unknown option: %s", optptr);
  rval |= option;
 }

 free(optlist);
 return (rval);
}
