
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;


 int MIN (size_t,int) ;
 int TEST_CHECK_INT (int,int) ;
 int TEST_NE ;
 int assert_ptr (char const*,int,char const*,char*,void const*,int *,int ) ;
 int fprintf (int ,char*,char const*,char*,size_t) ;
 int memcmp (void const*,void const*,size_t) ;
 int stderr ;
 int test_die () ;
 int test_header (char const*,int,char const*,char const*,char*,int) ;
 char* tohex (void const*,int ) ;

void
assert_mem(const char *file, int line, const char *a1, const char *a2,
    const void *aa1, const void *aa2, size_t l, enum test_predicate pred)
{
 int r;

 if (l == 0)
  return;

 assert_ptr(file, line, a1, "NULL", aa1, ((void*)0), TEST_NE);
 assert_ptr(file, line, a2, "NULL", aa2, ((void*)0), TEST_NE);

 r = memcmp(aa1, aa2, l);
 TEST_CHECK_INT(r, pred);
 test_header(file, line, a1, a2, "STRING", pred);
 fprintf(stderr, "%12s = %s (len %zu)\n", a1, tohex(aa1, MIN(l, 256)), l);
 fprintf(stderr, "%12s = %s (len %zu)\n", a2, tohex(aa2, MIN(l, 256)), l);
 test_die();
}
