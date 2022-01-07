
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;


 int ATF_CHECK_STREQ_MSG (char*,char const*,char*,size_t) ;
 int ATF_REQUIRE (int ) ;
 int ATF_REQUIRE_MSG (int,char*,char*,int,size_t) ;
 int free (char*) ;
 int snprintf (int ,size_t,char*,...) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
checkmatches(const char *matches, size_t nm, const regmatch_t *pm,
    size_t lineno)
{
 if (nm == 0)
  return;

 char *res;
 size_t len = strlen(matches) + 1, off = 0;

 ATF_REQUIRE((res = strdup(matches)) != ((void*)0));
 for (size_t i = 0; i < nm; i++) {
  int l;
  if (pm[i].rm_so == -1 && pm[i].rm_eo == -1)
   l = snprintf(res + off, len - off, "(?,?)");
  else
   l = snprintf(res + off, len - off, "(%lld,%lld)",
       (long long)pm[i].rm_so, (long long)pm[i].rm_eo);
  ATF_REQUIRE_MSG((size_t) l < len - off, "String too long %s"
      " cur=%d, max=%zu", res, l, len - off);
  off += l;
 }
 ATF_CHECK_STREQ_MSG(res, matches, " at line %zu", lineno);
 free(res);
}
