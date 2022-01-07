
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;


 int TEST_CHECK (scalar_t__,scalar_t__,int) ;
 int fprintf (int ,char*,char const*,unsigned long long,unsigned long long) ;
 int stderr ;
 int test_die () ;
 int test_header (char const*,int,char const*,char const*,char*,int) ;

void
assert_u64(const char *file, int line, const char *a1, const char *a2,
    u_int64_t aa1, u_int64_t aa2, enum test_predicate pred)
{
 TEST_CHECK(aa1, aa2, pred);
 test_header(file, line, a1, a2, "U64", pred);
 fprintf(stderr, "%12s = 0x%016llx %llu\n", a1,
     (unsigned long long)aa1, (unsigned long long)aa1);
 fprintf(stderr, "%12s = 0x%016llx %llu\n", a2,
     (unsigned long long)aa2, (unsigned long long)aa2);
 test_die();
}
