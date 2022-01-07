
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;


 int TEST_CHECK (size_t,size_t,int) ;
 int fprintf (int ,char*,char const*,size_t) ;
 int stderr ;
 int test_die () ;
 int test_header (char const*,int,char const*,char const*,char*,int) ;

void
assert_size_t(const char *file, int line, const char *a1, const char *a2,
    size_t aa1, size_t aa2, enum test_predicate pred)
{
 TEST_CHECK(aa1, aa2, pred);
 test_header(file, line, a1, a2, "SIZE_T", pred);
 fprintf(stderr, "%12s = %zu\n", a1, aa1);
 fprintf(stderr, "%12s = %zu\n", a2, aa2);
 test_die();
}
