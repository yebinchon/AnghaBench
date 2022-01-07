
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {scalar_t__ cd; scalar_t__ cd_w; int utftmp; struct archive_string_conv* to_charset; struct archive_string_conv* from_charset; } ;
typedef scalar_t__ iconv_t ;


 int archive_string_free (int *) ;
 int free (struct archive_string_conv*) ;
 int iconv_close (scalar_t__) ;

__attribute__((used)) static void
free_sconv_object(struct archive_string_conv *sc)
{
 free(sc->from_charset);
 free(sc->to_charset);
 archive_string_free(&sc->utftmp);






 free(sc);
}
