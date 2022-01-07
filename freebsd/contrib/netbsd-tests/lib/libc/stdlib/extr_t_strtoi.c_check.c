
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {scalar_t__ res; char* str; scalar_t__ base; scalar_t__ lo; scalar_t__ hi; int rstatus; int * end; } ;
typedef scalar_t__ intmax_t ;


 int atf_tc_fail_nonfatal (char*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,...) ;
 scalar_t__ strcmp (int *,char*) ;
 int strerror (int) ;

__attribute__((used)) static void
check(struct test *t, intmax_t rv, char *end, int rstatus)
{

 if (rv != t->res)
  atf_tc_fail_nonfatal("strtoi(%s, &end, %d, %jd, %jd, &rstatus)"
      " failed (rv = %jd)", t->str, t->base, t->lo, t->hi, rv);

 if (rstatus != t->rstatus)
  atf_tc_fail_nonfatal("strtoi(%s, &end, %d, %jd, %jd, &rstatus)"
      " failed (rstatus: %d ('%s'))",
      t->str, t->base, t->lo, t->hi, rstatus, strerror(rstatus));

 if ((t->end != ((void*)0) && strcmp(t->end, end) != 0) ||
     (t->end == ((void*)0) && *end != '\0'))
  atf_tc_fail_nonfatal("invalid end pointer ('%s') from "
      "strtoi(%s, &end, %d, %jd, %jd, &rstatus)",
       end, t->str, t->base, t->lo, t->hi);
}
