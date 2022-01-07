
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct test {char* locale; char* data; size_t wclen; size_t* mblen; } ;
typedef int st ;
typedef int mbstate_t ;


 int ATF_REQUIRE (int ) ;
 int ATF_REQUIRE_EQ (int,int ) ;
 int ATF_REQUIRE_EQ_MSG (size_t,int,char*,size_t,int) ;
 int ATF_REQUIRE_STREQ (char*,char*) ;
 int LC_ALL ;
 int LC_CTYPE ;
 int MB_LEN_MAX ;
 char TC_WCRTOMB_ST ;
 char TC_WCTOMB ;
 int VIS_OCTAL ;
 int VIS_WHITE ;
 int atf_tc_fail (char*) ;
 int fprintf (int ,char*,char*) ;
 size_t mbsrtowcs (int*,char const**,int,int *) ;
 int memset (int *,int ,int) ;
 int printf (char*,...) ;
 char* setlocale (int ,char*) ;
 int stderr ;
 int strvis (char*,char*,int) ;
 size_t wcrtomb (char*,int,int *) ;
 size_t wctomb (char*,int) ;

__attribute__((used)) static void
h_wctomb(const struct test *t, char tc)
{
 wchar_t wcs[16 + 2];
 char buf[128];
 char cs[MB_LEN_MAX];
 const char *pcs;
 char *str;
 mbstate_t st;
 mbstate_t *stp = ((void*)0);
 size_t sz, ret, i;

 ATF_REQUIRE_STREQ(setlocale(LC_ALL, "C"), "C");



 if (setlocale(LC_CTYPE, t->locale) == ((void*)0)) {
  fprintf(stderr, "Locale %s not found.\n", t->locale);
  return;
 }


 (void)strvis(buf, t->data, VIS_WHITE | VIS_OCTAL);
 (void)printf("Checking sequence: \"%s\"\n", buf);

 ATF_REQUIRE((str = setlocale(LC_ALL, ((void*)0))) != ((void*)0));
 (void)printf("Using locale: %s\n", str);

 if (tc == TC_WCRTOMB_ST) {
  (void)memset(&st, 0, sizeof(st));
  stp = &st;
 }

 wcs[t->wclen] = L'X';
 pcs = t->data;
 sz = mbsrtowcs(wcs, &pcs, t->wclen + 2, ((void*)0));
 ATF_REQUIRE_EQ_MSG(sz, t->wclen, "mbsrtowcs() returned: "
  "%zu, expected: %zu", sz, t->wclen);
 ATF_REQUIRE_EQ(wcs[t->wclen], 0);

 for (i = 0; i < t->wclen + 1; i++) {
  if (tc == TC_WCTOMB)
   ret = wctomb(cs, wcs[i]);
  else
   ret = wcrtomb(cs, wcs[i], stp);

  if (ret == t->mblen[i])
   continue;

  (void)printf("At position %zd:\n", i);
  (void)printf("  expected: %zd\n", t->mblen[i]);
  (void)printf("  got     : %zd\n", ret);
  atf_tc_fail("Test failed");

 }

 (void)printf("Ok.\n");
}
