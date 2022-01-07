
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_string_conv {int dummy; } ;
struct archive_string {char const* s; } ;
struct archive_mstring {int dummy; } ;
struct archive {int dummy; } ;
typedef int nfd ;
typedef int nfc ;
typedef int mstr ;
typedef int buff ;
typedef int FILE ;


 int ARCHIVE_OK ;
 int LC_ALL ;
 int SCONV_SET_OPT_NORMALIZATION_D ;
 int archive_mstring_clean (struct archive_mstring*) ;
 int archive_mstring_copy_mbs_len_l (struct archive_mstring*,char*,int,struct archive_string_conv*) ;
 int archive_mstring_copy_wcs (struct archive_mstring*,int *) ;
 int archive_mstring_get_mbs_l (struct archive_mstring*,char const**,size_t*,struct archive_string_conv*) ;
 int archive_mstring_get_wcs (struct archive*,struct archive_mstring*,int const**) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_strcpy_l (struct archive_string*,char*,struct archive_string_conv*) ;
 struct archive_string_conv* archive_string_conversion_from_charset (struct archive*,char*,int ) ;
 int archive_string_conversion_set_opt (struct archive_string_conv*,int) ;
 struct archive_string_conv* archive_string_conversion_to_charset (struct archive*,char*,int ) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int archive_strncpy_l (struct archive_string*,char*,int,struct archive_string_conv*) ;
 int archive_write_free (struct archive*) ;
 struct archive* archive_write_new () ;
 int assert (int ) ;
 int assertA (int) ;
 int assertEqualInt (int ,int ) ;
 int assertEqualUTF8String (char*,char const*) ;
 int assertEqualWString (int *,int const*) ;
 int failure (char*,char*,...) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int is_wc_unicode () ;
 int memset (struct archive_mstring*,int ,int) ;
 int scan_unicode_pattern (char*,int *,char*,char*,char*,int) ;
 int * setlocale (int ,char*) ;
 int skipping (char*) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void
test_archive_string_normalization_mac_nfd(const char *testdata)
{
 struct archive *a, *a2;
 struct archive_string utf8;
 struct archive_mstring mstr;
 struct archive_string_conv *f_sconv8, *t_sconv8;
 struct archive_string_conv *f_sconv16be, *f_sconv16le;
 FILE *fp;
 char buff[512];
 int line = 0;
 int locale_is_utf8, wc_is_unicode;
 int sconv_opt = SCONV_SET_OPT_NORMALIZATION_D;

 locale_is_utf8 = (((void*)0) != setlocale(LC_ALL, "en_US.UTF-8"));
 wc_is_unicode = is_wc_unicode();

 if (!locale_is_utf8 && !wc_is_unicode) {
  skipping("A test of string normalization for NFD requires "
      "a suitable locale; en_US.UTF-8 not available on this "
      "system");
  return;
 }

 archive_string_init(&utf8);
 memset(&mstr, 0, sizeof(mstr));




 assert((a = archive_read_new()) != ((void*)0));
 assertA(((void*)0) != (f_sconv8 =
     archive_string_conversion_from_charset(a, "UTF-8", 0)));
 assertA(((void*)0) != (f_sconv16be =
     archive_string_conversion_from_charset(a, "UTF-16BE", 0)));
 assertA(((void*)0) != (f_sconv16le =
     archive_string_conversion_from_charset(a, "UTF-16LE", 0)));
 assert((a2 = archive_write_new()) != ((void*)0));
 assertA(((void*)0) != (t_sconv8 =
     archive_string_conversion_to_charset(a2, "UTF-8", 0)));
 if (f_sconv8 == ((void*)0) || f_sconv16be == ((void*)0) || f_sconv16le == ((void*)0) ||
     t_sconv8 == ((void*)0)) {

  assertEqualInt(ARCHIVE_OK, archive_read_free(a));
  return;
 }
 archive_string_conversion_set_opt(f_sconv8, sconv_opt);
 archive_string_conversion_set_opt(f_sconv16be, sconv_opt);
 archive_string_conversion_set_opt(f_sconv16le, sconv_opt);
 archive_string_conversion_set_opt(t_sconv8, sconv_opt);


 assert((fp = fopen(testdata, "r")) != ((void*)0));
 while (fgets(buff, sizeof(buff), fp) != ((void*)0)) {
  char nfc[80], nfd[80];
  char utf8_nfc[80], utf8_nfd[80];
  char utf16be_nfc[80], utf16be_nfd[80];
  char utf16le_nfc[80], utf16le_nfd[80];
  wchar_t wc_nfc[40], wc_nfd[40];
  char *e, *p;
  const wchar_t *wp;
  const char *mp;
  size_t mplen;
  int should_be_nfc;

  line++;
  if (buff[0] == '#')
   continue;
  p = strchr(buff, ';');
  if (p == ((void*)0))
   continue;
  *p++ = '\0';

  strncpy(nfc, buff, sizeof(nfc)-1);
  nfc[sizeof(nfc)-1] = '\0';
  e = p;
  p = strchr(p, '\n');
  if (p == ((void*)0))
   continue;
  *p = '\0';

  strncpy(nfd, e, sizeof(nfd)-1);
  nfd[sizeof(nfd)-1] = '\0';




  should_be_nfc = scan_unicode_pattern(utf8_nfc, wc_nfc,
   utf16be_nfc, utf16le_nfc, nfc, 1);




  scan_unicode_pattern(utf8_nfd, wc_nfd, utf16be_nfd, utf16le_nfd,
      nfd, 0);

  if (locale_is_utf8) {



   assertEqualInt(0, archive_strcpy_l(
       &utf8, utf8_nfc, f_sconv8));
   if (should_be_nfc) {
    failure("NFC(%s) should not be converted to"
        " NFD(%s):%d", nfc, nfd, line);
    assertEqualUTF8String(utf8_nfc, utf8.s);
   } else {
    failure("NFC(%s) should be converted to"
        " NFD(%s):%d", nfc, nfd, line);
    assertEqualUTF8String(utf8_nfd, utf8.s);
   }




   assertEqualInt(0, archive_strcpy_l(
       &utf8, utf8_nfd, f_sconv8));
   failure("NFD(%s) should not be any changed:%d",
       nfd, line);
   assertEqualUTF8String(utf8_nfd, utf8.s);




   assertEqualInt(0, archive_strcpy_l(
       &utf8, utf8_nfd, t_sconv8));
   failure("NFD(%s) should not be any changed:%d",
       nfd, line);
   assertEqualUTF8String(utf8_nfd, utf8.s);




   assertEqualInt(0, archive_strncpy_l(
       &utf8, utf16be_nfc, 100000, f_sconv16be));
   if (should_be_nfc) {
    failure("NFC(%s) should not be converted to"
        " NFD(%s):%d", nfc, nfd, line);
    assertEqualUTF8String(utf8_nfc, utf8.s);
   } else {
    failure("NFC(%s) should be converted to"
        " NFD(%s):%d", nfc, nfd, line);
    assertEqualUTF8String(utf8_nfd, utf8.s);
   }




   assertEqualInt(0, archive_strncpy_l(
       &utf8, utf16le_nfc, 100000, f_sconv16le));
   if (should_be_nfc) {
    failure("NFC(%s) should not be converted to"
        " NFD(%s):%d", nfc, nfd, line);
    assertEqualUTF8String(utf8_nfc, utf8.s);
   } else {
    failure("NFC(%s) should be converted to"
        " NFD(%s):%d", nfc, nfd, line);
    assertEqualUTF8String(utf8_nfd, utf8.s);
   }
  }
  if (locale_is_utf8 || wc_is_unicode) {



   assertEqualInt(0, archive_mstring_copy_mbs_len_l(
       &mstr, utf8_nfc, 100000, f_sconv8));
   assertEqualInt(0,
       archive_mstring_get_wcs(a, &mstr, &wp));
   if (should_be_nfc) {
    failure("UTF-8 NFC(%s) should not be converted "
        "to WCS NFD(%s):%d", nfc, nfd, line);
    assertEqualWString(wc_nfc, wp);
   } else {
    failure("UTF-8 NFC(%s) should be converted "
        "to WCS NFD(%s):%d", nfc, nfd, line);
    assertEqualWString(wc_nfd, wp);
   }




   assertEqualInt(0, archive_mstring_copy_mbs_len_l(
       &mstr, utf16be_nfc, 100000, f_sconv16be));
   assertEqualInt(0,
       archive_mstring_get_wcs(a, &mstr, &wp));
   if (should_be_nfc) {
    failure("UTF-16BE NFC(%s) should not be "
        "converted to WCS NFD(%s):%d",
        nfc, nfd, line);
    assertEqualWString(wc_nfc, wp);
   } else {
    failure("UTF-16BE NFC(%s) should be converted "
        "to WCS NFD(%s):%d", nfc, nfd, line);
    assertEqualWString(wc_nfd, wp);
   }




   assertEqualInt(0, archive_mstring_copy_mbs_len_l(
       &mstr, utf16le_nfc, 100000, f_sconv16le));
   assertEqualInt(0,
       archive_mstring_get_wcs(a, &mstr, &wp));
   if (should_be_nfc) {
    failure("UTF-16LE NFC(%s) should not be "
        "converted to WCS NFD(%s):%d",
        nfc, nfd, line);
    assertEqualWString(wc_nfc, wp);
   } else {
    failure("UTF-16LE NFC(%s) should be converted "
        "to WCS NFD(%s):%d", nfc, nfd, line);
    assertEqualWString(wc_nfd, wp);
   }




   assertEqualInt(0, archive_mstring_copy_wcs(
       &mstr, wc_nfd));
   assertEqualInt(0, archive_mstring_get_mbs_l(
       &mstr, &mp, &mplen, t_sconv8));
   failure("WCS NFD(%s) should be UTF-8 NFD:%d"
       ,nfd, line);
   assertEqualUTF8String(utf8_nfd, mp);
  }
 }

 archive_string_free(&utf8);
 archive_mstring_clean(&mstr);
 fclose(fp);
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a2));
}
