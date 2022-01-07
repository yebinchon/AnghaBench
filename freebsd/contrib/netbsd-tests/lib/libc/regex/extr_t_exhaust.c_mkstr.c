
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int ,char*,size_t,size_t) ;
 char* malloc (size_t) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
mkstr(const char *str, size_t len)
{
 size_t slen = strlen(str);
 char *p = malloc(slen * len + 1);
 ATF_REQUIRE_MSG(p != ((void*)0), "slen=%zu, len=%zu", slen, len);
 for (size_t i = 0; i < len; i++)
  strcpy(&p[i * slen], str);
 return p;
}
