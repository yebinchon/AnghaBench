
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;


 int TEST_CHECK (int,int,int) ;
 int fprintf (int ,char*,char const*,int,int) ;
 int stderr ;
 int test_die () ;
 int test_header (char const*,int,char const*,char const*,char*,int) ;

void
assert_u8(const char *file, int line, const char *a1, const char *a2,
    u_int8_t aa1, u_int8_t aa2, enum test_predicate pred)
{
 TEST_CHECK(aa1, aa2, pred);
 test_header(file, line, a1, a2, "U8", pred);
 fprintf(stderr, "%12s = 0x%02x %u\n", a1, aa1, aa1);
 fprintf(stderr, "%12s = 0x%02x %u\n", a2, aa2, aa2);
 test_die();
}
