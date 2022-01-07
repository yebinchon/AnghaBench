
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;


 int TEST_CHECK (void const*,void const*,int) ;
 int fprintf (int ,char*,char const*,void const*) ;
 int stderr ;
 int test_die () ;
 int test_header (char const*,int,char const*,char const*,char*,int) ;

void
assert_ptr(const char *file, int line, const char *a1, const char *a2,
    const void *aa1, const void *aa2, enum test_predicate pred)
{
 TEST_CHECK(aa1, aa2, pred);
 test_header(file, line, a1, a2, "PTR", pred);
 fprintf(stderr, "%12s = %p\n", a1, aa1);
 fprintf(stderr, "%12s = %p\n", a2, aa2);
 test_die();
}
