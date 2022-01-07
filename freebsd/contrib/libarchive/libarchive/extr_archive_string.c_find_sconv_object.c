
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int to_charset; int from_charset; struct archive_string_conv* next; } ;
struct archive {struct archive_string_conv* sconv; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct archive_string_conv *
find_sconv_object(struct archive *a, const char *fc, const char *tc)
{
 struct archive_string_conv *sc;

 if (a == ((void*)0))
  return (((void*)0));

 for (sc = a->sconv; sc != ((void*)0); sc = sc->next) {
  if (strcmp(sc->from_charset, fc) == 0 &&
      strcmp(sc->to_charset, tc) == 0)
   break;
 }
 return (sc);
}
