
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {struct archive_string_conv* next; } ;
struct archive {int * current_code; struct archive_string_conv* sconv; } ;


 int free (int *) ;
 int free_sconv_object (struct archive_string_conv*) ;

void
archive_string_conversion_free(struct archive *a)
{
 struct archive_string_conv *sc;
 struct archive_string_conv *sc_next;

 for (sc = a->sconv; sc != ((void*)0); sc = sc_next) {
  sc_next = sc->next;
  free_sconv_object(sc);
 }
 a->sconv = ((void*)0);
 free(a->current_code);
 a->current_code = ((void*)0);
}
