
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;


 int TEST_CHECK_INT (int,int) ;
 int TEST_NE ;
 int assert_ptr (char const*,int,char const*,char*,char const*,int *,int ) ;
 int fprintf (int ,char*,char const*,char const*,int ) ;
 int stderr ;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 int test_die () ;
 int test_header (char const*,int,char const*,char const*,char*,int) ;

void
assert_string(const char *file, int line, const char *a1, const char *a2,
    const char *aa1, const char *aa2, enum test_predicate pred)
{
 int r;


 assert_ptr(file, line, a1, "NULL", aa1, ((void*)0), TEST_NE);
 assert_ptr(file, line, a2, "NULL", aa2, ((void*)0), TEST_NE);

 r = strcmp(aa1, aa2);
 TEST_CHECK_INT(r, pred);
 test_header(file, line, a1, a2, "STRING", pred);
 fprintf(stderr, "%12s = %s (len %zu)\n", a1, aa1, strlen(aa1));
 fprintf(stderr, "%12s = %s (len %zu)\n", a2, aa2, strlen(aa2));
 test_die();
}
