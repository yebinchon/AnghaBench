
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int flag; } ;


 int SCONV_FROM_UTF16 ;
 int SCONV_FROM_UTF8 ;
 int SCONV_NORMALIZATION_C ;
 int SCONV_NORMALIZATION_D ;



 int SCONV_TO_UTF16 ;
 int SCONV_TO_UTF8 ;
 int SCONV_UTF8_LIBARCHIVE_2 ;
 int SCONV_WIN_CP ;
 int setup_converter (struct archive_string_conv*) ;

void
archive_string_conversion_set_opt(struct archive_string_conv *sc, int opt)
{
 switch (opt) {






 case 128:
  if ((sc->flag & SCONV_UTF8_LIBARCHIVE_2) == 0) {
   sc->flag |= SCONV_UTF8_LIBARCHIVE_2;

   setup_converter(sc);
  }

  break;
 case 130:
  if ((sc->flag & SCONV_NORMALIZATION_C) == 0) {
   sc->flag |= SCONV_NORMALIZATION_C;
   sc->flag &= ~SCONV_NORMALIZATION_D;

   setup_converter(sc);
  }
  break;
 case 129:
  if ((sc->flag & SCONV_NORMALIZATION_D) == 0) {
   sc->flag |= SCONV_NORMALIZATION_D;
   sc->flag &= ~SCONV_NORMALIZATION_C;

   setup_converter(sc);
  }
  break;
 default:
  break;
 }
}
