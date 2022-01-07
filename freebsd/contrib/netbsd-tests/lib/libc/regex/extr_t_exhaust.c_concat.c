
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int ) ;
 char* malloc (size_t) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
concat(const char *d, const char *s)
{
 size_t dlen = strlen(d);
 size_t slen = strlen(s);
 char *p = malloc(dlen + slen + 1);

 ATF_REQUIRE(p != ((void*)0));
 strcpy(p, d);
 strcpy(p + dlen, s);
 return p;
}
