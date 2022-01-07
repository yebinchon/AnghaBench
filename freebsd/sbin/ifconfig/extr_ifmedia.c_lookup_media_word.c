
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia_description {int ifmt_word; int * ifmt_string; } ;


 scalar_t__ strcasecmp (int *,char const*) ;

__attribute__((used)) static int
lookup_media_word(struct ifmedia_description *desc, const char *val)
{

 for (; desc->ifmt_string != ((void*)0); desc++)
  if (strcasecmp(desc->ifmt_string, val) == 0)
   return (desc->ifmt_word);

 return (-1);
}
