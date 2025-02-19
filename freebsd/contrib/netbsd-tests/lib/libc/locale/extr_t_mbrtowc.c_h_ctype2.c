
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int wbuf ;
struct test {char* locale; char* data; int* wchars; int* widths; int length; } ;
typedef int st ;
typedef int mbstate_t ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (char const*,int *) ;
 int ATF_REQUIRE_EQ_MSG (size_t,int ,char*,int,...) ;
 int ATF_REQUIRE_STREQ (char*,char*) ;
 int * EILSEQ ;
 int LC_ALL ;
 int LC_CTYPE ;
 int SIZE ;
 int VIS_OCTAL ;
 int VIS_WHITE ;
 int atf_tc_fail (char*) ;
 char const* errno ;
 int fprintf (int ,char*,char*) ;
 size_t mbrtowc (int*,char const*,size_t,int*) ;
 scalar_t__ mbsinit (int*) ;
 size_t mbsrtowcs (int*,char const**,int,int*) ;
 int memset (int*,int,int) ;
 int printf (char*,...) ;
 char* setlocale (int ,char*) ;
 int stderr ;
 int strvis (char*,char*,int) ;

__attribute__((used)) static void
h_ctype2(const struct test *t, bool use_mbstate)
{
 mbstate_t *stp;
 mbstate_t st;
 char buf[SIZE];
 char *str;
 size_t n;

 ATF_REQUIRE_STREQ(setlocale(LC_ALL, "C"), "C");



 if (setlocale(LC_CTYPE, t->locale) == ((void*)0)) {
  fprintf(stderr, "Locale %s not found.\n", t->locale);
  return;
 }


 (void)strvis(buf, t->data, VIS_WHITE | VIS_OCTAL);
 (void)printf("Checking string: \"%s\"\n", buf);

 ATF_REQUIRE((str = setlocale(LC_ALL, ((void*)0))) != ((void*)0));
 (void)printf("Using locale: %s\n", str);

 (void)printf("Using mbstate: %s\n", use_mbstate ? "yes" : "no");

 (void)memset(&st, 0, sizeof(st));

 stp = use_mbstate ? &st : 0;

 for (n = 9; n > 0; n--) {
  const char *src = t->data;
  wchar_t dst;
  size_t nchar = 0;
  int width = 0;

  ATF_REQUIRE(mbsinit(stp) != 0);

  for (;;) {
   size_t rv = mbrtowc(&dst, src, n, stp);

   if (rv == 0)
    break;

   if (rv == (size_t)-2) {
    src += n;
    width += n;

    continue;
   }
   if (rv == (size_t)-1) {
    ATF_REQUIRE_EQ(errno, EILSEQ);
    atf_tc_fail("Invalid sequence");

   }

   width += rv;
   src += rv;

   if (dst != t->wchars[nchar] ||
       width != t->widths[nchar]) {
    (void)printf("At position %zd:\n", nchar);
    (void)printf("  expected: 0x%04X (%u)\n",
     t->wchars[nchar], t->widths[nchar]);
    (void)printf("  got     : 0x%04X (%u)\n",
     dst, width);
    atf_tc_fail("Test failed");
   }

   nchar++;
   width = 0;
  }

  ATF_REQUIRE_EQ_MSG(dst, 0, "Incorrect terminating character: "
   "0x%04X (expected: 0x00)", dst);

  ATF_REQUIRE_EQ_MSG(nchar, t->length, "Incorrect length: "
   "%zd (expected: %zd)", nchar, t->length);
 }

 {
  wchar_t wbuf[SIZE];
  size_t rv;
  char const *src = t->data;
  int i;

  (void)memset(wbuf, 0xFF, sizeof(wbuf));

  rv = mbsrtowcs(wbuf, &src, SIZE, stp);

  ATF_REQUIRE_EQ_MSG(rv, t->length, "Incorrect length: %zd "
   "(expected: %zd)", rv, t->length);
  ATF_REQUIRE_EQ(src, ((void*)0));

  for (i = 0; wbuf[i] != 0; ++i) {
   if (wbuf[i] == t->wchars[i])
    continue;

   (void)printf("At position %d:\n", i);
   (void)printf("  expected: 0x%04X\n", t->wchars[i]);
   (void)printf("  got     : 0x%04X\n", wbuf[i]);
   atf_tc_fail("Test failed");
  }

  ATF_REQUIRE_EQ_MSG((size_t)i, t->length, "Incorrect length: "
   "%d (expected: %zd)", i, t->length);
 }

 (void)printf("Ok.\n");
}
