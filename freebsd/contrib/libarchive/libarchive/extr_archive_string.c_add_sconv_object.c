
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {struct archive_string_conv* next; } ;
struct archive {struct archive_string_conv* sconv; } ;



__attribute__((used)) static void
add_sconv_object(struct archive *a, struct archive_string_conv *sc)
{
 struct archive_string_conv **psc;


 psc = &(a->sconv);
 while (*psc != ((void*)0))
  psc = &((*psc)->next);
 *psc = sc;
}
