
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_REQUIRE (char*,char const*) ;
 int btoa8 (char*,char*) ;
 int f (char*) ;
 int keycrunch (char*,char const*,char const*) ;
 int skey_set_algorithm (char const*) ;

__attribute__((used)) static void
h_check(const char *pass, const char *seed,
        const char *algo, const char *zero,
        const char *one, const char *nine)
{
 char prn[64];
 char data[16];
 int i;

 skey_set_algorithm(algo);

 keycrunch(data, seed, pass);
 btoa8(prn, data);
 H_REQUIRE(prn, zero);

 f(data);
 btoa8(prn, data);
 H_REQUIRE(prn, one);

 for(i = 1; i < 99; ++i)
  f(data);
 btoa8(prn, data);
 H_REQUIRE(prn, nine);
}
