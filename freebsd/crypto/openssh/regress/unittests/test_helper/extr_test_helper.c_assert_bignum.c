
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;
typedef int BIGNUM ;


 char* BN_bn2hex (int const*) ;
 int BN_cmp (int const*,int const*) ;
 int TEST_CHECK_INT (int,int) ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;
 int test_die () ;
 int test_header (char const*,int,char const*,char const*,char*,int) ;

void
assert_bignum(const char *file, int line, const char *a1, const char *a2,
    const BIGNUM *aa1, const BIGNUM *aa2, enum test_predicate pred)
{
 int r = BN_cmp(aa1, aa2);

 TEST_CHECK_INT(r, pred);
 test_header(file, line, a1, a2, "BIGNUM", pred);
 fprintf(stderr, "%12s = 0x%s\n", a1, BN_bn2hex(aa1));
 fprintf(stderr, "%12s = 0x%s\n", a2, BN_bn2hex(aa2));
 test_die();
}
