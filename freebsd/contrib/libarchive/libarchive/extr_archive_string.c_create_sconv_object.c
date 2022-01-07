
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {unsigned int from_cp; unsigned int to_cp; int same; scalar_t__ cd_w; scalar_t__ cd; int flag; int utftmp; struct archive_string_conv* from_charset; int * to_charset; int * next; } ;
typedef scalar_t__ iconv_t ;


 scalar_t__ CP_UTF16BE ;
 scalar_t__ CP_UTF16LE ;
 scalar_t__ CP_UTF8 ;
 scalar_t__ IsValidCodePage (unsigned int) ;
 int SCONV_BEST_EFFORT ;
 int SCONV_FROM_CHARSET ;
 int SCONV_FROM_UTF16 ;
 int SCONV_FROM_UTF16BE ;
 int SCONV_FROM_UTF16LE ;
 int SCONV_FROM_UTF8 ;
 int SCONV_NORMALIZATION_C ;
 int SCONV_NORMALIZATION_D ;
 int SCONV_TO_CHARSET ;
 int SCONV_TO_UTF16 ;
 int SCONV_TO_UTF16BE ;
 int SCONV_TO_UTF16LE ;
 int SCONV_TO_UTF8 ;
 int SCONV_WIN_CP ;
 int archive_string_init (int *) ;
 struct archive_string_conv* calloc (int,int) ;
 int free (struct archive_string_conv*) ;
 void* iconv_open (char const*,char const*) ;
 void* make_codepage_from_charset (char const*) ;
 int setup_converter (struct archive_string_conv*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 void* strdup (char const*) ;

__attribute__((used)) static struct archive_string_conv *
create_sconv_object(const char *fc, const char *tc,
    unsigned current_codepage, int flag)
{
 struct archive_string_conv *sc;

 sc = calloc(1, sizeof(*sc));
 if (sc == ((void*)0))
  return (((void*)0));
 sc->next = ((void*)0);
 sc->from_charset = strdup(fc);
 if (sc->from_charset == ((void*)0)) {
  free(sc);
  return (((void*)0));
 }
 sc->to_charset = strdup(tc);
 if (sc->to_charset == ((void*)0)) {
  free(sc->from_charset);
  free(sc);
  return (((void*)0));
 }
 archive_string_init(&sc->utftmp);

 if (flag & SCONV_TO_CHARSET) {




  sc->from_cp = current_codepage;
  sc->to_cp = make_codepage_from_charset(tc);




 } else if (flag & SCONV_FROM_CHARSET) {




  sc->to_cp = current_codepage;
  sc->from_cp = make_codepage_from_charset(fc);




 }




 if (strcmp(fc, tc) == 0 ||
     (sc->from_cp != (unsigned)-1 && sc->from_cp == sc->to_cp))
  sc->same = 1;
 else
  sc->same = 0;




 if (strcmp(tc, "UTF-8") == 0)
  flag |= SCONV_TO_UTF8;
 else if (strcmp(tc, "UTF-16BE") == 0)
  flag |= SCONV_TO_UTF16BE;
 else if (strcmp(tc, "UTF-16LE") == 0)
  flag |= SCONV_TO_UTF16LE;
 if (strcmp(fc, "UTF-8") == 0)
  flag |= SCONV_FROM_UTF8;
 else if (strcmp(fc, "UTF-16BE") == 0)
  flag |= SCONV_FROM_UTF16BE;
 else if (strcmp(fc, "UTF-16LE") == 0)
  flag |= SCONV_FROM_UTF16LE;
 if ((flag & SCONV_FROM_CHARSET) &&
     (flag & (SCONV_FROM_UTF16 | SCONV_FROM_UTF8))) {





   flag |= SCONV_NORMALIZATION_C;
 }
 sc->flag = flag;




 setup_converter(sc);

 return (sc);
}
