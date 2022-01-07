
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {scalar_t__ nconverter; } ;
struct archive {unsigned int current_codepage; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ENOMEM ;
 int SCONV_TO_CHARSET ;
 int add_sconv_object (struct archive*,struct archive_string_conv*) ;
 int archive_set_error (struct archive*,int ,char*,...) ;
 int canonical_charset_name (char const*) ;
 struct archive_string_conv* create_sconv_object (int ,int ,unsigned int,int) ;
 struct archive_string_conv* find_sconv_object (struct archive*,char const*,char const*) ;
 int free_sconv_object (struct archive_string_conv*) ;
 unsigned int get_current_codepage () ;

__attribute__((used)) static struct archive_string_conv *
get_sconv_object(struct archive *a, const char *fc, const char *tc, int flag)
{
 struct archive_string_conv *sc;
 unsigned current_codepage;


 sc = find_sconv_object(a, fc, tc);
 if (sc != ((void*)0))
  return (sc);

 if (a == ((void*)0))
  current_codepage = get_current_codepage();
 else
  current_codepage = a->current_codepage;

 sc = create_sconv_object(canonical_charset_name(fc),
     canonical_charset_name(tc), current_codepage, flag);
 if (sc == ((void*)0)) {
  if (a != ((void*)0))
   archive_set_error(a, ENOMEM,
       "Could not allocate memory for "
       "a string conversion object");
  return (((void*)0));
 }





 if (sc->nconverter == 0) {
  if (a != ((void*)0)) {





   archive_set_error(a, ARCHIVE_ERRNO_MISC,
       "A character-set conversion not fully supported "
       "on this platform");

  }

  free_sconv_object(sc);
  return (((void*)0));
 }




 if (a != ((void*)0))
  add_sconv_object(a, sc);
 return (sc);
}
