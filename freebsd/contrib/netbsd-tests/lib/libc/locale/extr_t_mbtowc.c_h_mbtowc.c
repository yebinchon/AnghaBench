
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (size_t,size_t) ;
 int ATF_REQUIRE_STREQ (char*,char*) ;
 size_t EILSEQ ;
 int LC_ALL ;
 int LC_CTYPE ;
 int VIS_OCTAL ;
 int VIS_WHITE ;
 size_t errno ;
 int fprintf (int ,char*,char const*) ;
 size_t mbtowc (int *,char const*,int ) ;
 int printf (char*,...) ;
 char* setlocale (int ,char const*) ;
 int stderr ;
 char* strerror (size_t) ;
 int strlen (char const*) ;
 int strvis (char*,char const*,int) ;
 size_t wctomb (int *,int) ;

__attribute__((used)) static void
h_mbtowc(const char *locale, const char *illegal, const char *legal)
{
 char buf[64];
 size_t stateful, ret;
 char *str;

 ATF_REQUIRE_STREQ(setlocale(LC_ALL, "C"), "C");



 if (setlocale(LC_CTYPE, locale) == ((void*)0)) {
  fprintf(stderr, "Locale %s not found.\n", locale);
  return;
 }


 ATF_REQUIRE((str = setlocale(LC_ALL, ((void*)0))) != ((void*)0));
 (void)printf("Using locale: %s\n", str);

 stateful = wctomb(((void*)0), L'\0');
 (void)printf("Locale is state-%sdependent\n",
  stateful ? "in" : "");


 ret = mbtowc(((void*)0), ((void*)0), 0);
 ATF_REQUIRE(stateful ? ret : !ret);

 (void)strvis(buf, illegal, VIS_WHITE | VIS_OCTAL);
 (void)printf("Checking illegal sequence: \"%s\"\n", buf);

 ret = mbtowc(((void*)0), illegal, strlen(illegal));
 (void)printf("mbtowc() returned: %zd\n", ret);
 ATF_REQUIRE_EQ(ret, (size_t)-1);
 (void)printf("errno: %s\n", strerror(errno));
 ATF_REQUIRE_EQ(errno, EILSEQ);


 if (stateful) {

  ret = mbtowc(((void*)0), ((void*)0), 0);
  ATF_REQUIRE(stateful ? ret : !ret);
 }


 (void)strvis(buf, legal, VIS_WHITE | VIS_OCTAL);
 (void)printf("Checking legal sequence: \"%s\"\n", buf);

 errno = 0;
 ret = mbtowc(((void*)0), legal, strlen(legal));
 (void)printf("mbtowc() returned: %zd\n", ret);
 ATF_REQUIRE(ret != (size_t)-1);
 (void)printf("errno: %s\n", strerror(errno));
 ATF_REQUIRE_EQ(errno, 0);

 (void)printf("Ok.\n");
}
