
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int flag; scalar_t__ cd; scalar_t__ nconverter; scalar_t__ same; } ;
typedef scalar_t__ iconv_t ;


 int SCONV_BEST_EFFORT ;
 int SCONV_FROM_CHARSET ;
 int SCONV_FROM_UTF16 ;
 int SCONV_FROM_UTF16BE ;
 int SCONV_FROM_UTF16LE ;
 int SCONV_FROM_UTF8 ;
 int SCONV_NORMALIZATION_C ;
 int SCONV_NORMALIZATION_D ;
 int SCONV_TO_UTF16 ;
 int SCONV_TO_UTF16BE ;
 int SCONV_TO_UTF8 ;
 int SCONV_UTF8_LIBARCHIVE_2 ;
 int SCONV_WIN_CP ;
 int add_converter (struct archive_string_conv*,int ) ;
 int archive_string_append_unicode ;
 int archive_string_normalize_C ;
 int archive_string_normalize_D ;
 int best_effort_strncat_from_utf16be ;
 int best_effort_strncat_from_utf16le ;
 int best_effort_strncat_in_locale ;
 int best_effort_strncat_to_utf16be ;
 int best_effort_strncat_to_utf16le ;
 int iconv_strncat_in_locale ;
 int strncat_from_utf8_libarchive2 ;
 int strncat_from_utf8_to_utf8 ;
 int strncat_in_codepage ;
 int win_strncat_from_utf16be ;
 int win_strncat_from_utf16le ;
 int win_strncat_to_utf16be ;
 int win_strncat_to_utf16le ;

__attribute__((used)) static void
setup_converter(struct archive_string_conv *sc)
{


 sc->nconverter = 0;





 if (sc->flag & SCONV_UTF8_LIBARCHIVE_2) {
  add_converter(sc, strncat_from_utf8_libarchive2);
  return;
 }




 if (sc->flag & SCONV_TO_UTF16) {




  if (sc->flag & SCONV_FROM_UTF8) {
   add_converter(sc, archive_string_append_unicode);
   return;
  }
  if (sc->flag & SCONV_BEST_EFFORT) {
   if (sc->flag & SCONV_TO_UTF16BE)
    add_converter(sc,
     best_effort_strncat_to_utf16be);
   else
    add_converter(sc,
     best_effort_strncat_to_utf16le);
  } else

   sc->nconverter = 0;
  return;
 }




 if (sc->flag & SCONV_FROM_UTF16) {



  if (sc->flag & SCONV_NORMALIZATION_D)
   add_converter(sc,archive_string_normalize_D);
  else if (sc->flag & SCONV_NORMALIZATION_C)
   add_converter(sc, archive_string_normalize_C);

  if (sc->flag & SCONV_TO_UTF8) {




   if (!(sc->flag &
       (SCONV_NORMALIZATION_D |SCONV_NORMALIZATION_C)))
    add_converter(sc,
        archive_string_append_unicode);
   return;
  }
  if ((sc->flag & (SCONV_BEST_EFFORT | SCONV_FROM_UTF16BE))
      == (SCONV_BEST_EFFORT | SCONV_FROM_UTF16BE))
   add_converter(sc, best_effort_strncat_from_utf16be);
  else if ((sc->flag & (SCONV_BEST_EFFORT | SCONV_FROM_UTF16LE))
      == (SCONV_BEST_EFFORT | SCONV_FROM_UTF16LE))
   add_converter(sc, best_effort_strncat_from_utf16le);
  else

   sc->nconverter = 0;
  return;
 }

 if (sc->flag & SCONV_FROM_UTF8) {



  if (sc->flag & SCONV_NORMALIZATION_D)
   add_converter(sc,archive_string_normalize_D);
  else if (sc->flag & SCONV_NORMALIZATION_C)
   add_converter(sc, archive_string_normalize_C);







  if (sc->flag & SCONV_TO_UTF8) {




   if (!(sc->flag &
       (SCONV_NORMALIZATION_D |SCONV_NORMALIZATION_C)))
    add_converter(sc, strncat_from_utf8_to_utf8);
   return;
  }
 }
 if ((sc->flag & SCONV_BEST_EFFORT) || sc->same)
  add_converter(sc, best_effort_strncat_in_locale);
 else

  sc->nconverter = 0;
}
