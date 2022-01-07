
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int tmp ;
typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;


 int MIN (size_t,int) ;
 int TEST_CHECK_INT (int,int) ;
 int TEST_NE ;
 int assert_ptr (char const*,int,char const*,char*,void const*,int *,int ) ;
 int fprintf (int ,char*,char const*,...) ;
 int memvalcmp (void const*,int,size_t,size_t*) ;
 int snprintf (char*,int,char*,char const*,size_t) ;
 int stderr ;
 int test_die () ;
 int test_header (char const*,int,char const*,int *,char*,int) ;
 char* tohex (void const*,int ) ;

void
assert_mem_filled(const char *file, int line, const char *a1,
    const void *aa1, u_char v, size_t l, enum test_predicate pred)
{
 size_t where = -1;
 int r;
 char tmp[64];

 if (l == 0)
  return;

 assert_ptr(file, line, a1, "NULL", aa1, ((void*)0), TEST_NE);

 r = memvalcmp(aa1, v, l, &where);
 TEST_CHECK_INT(r, pred);
 test_header(file, line, a1, ((void*)0), "MEM_ZERO", pred);
 fprintf(stderr, "%20s = %s%s (len %zu)\n", a1,
     tohex(aa1, MIN(l, 20)), l > 20 ? "..." : "", l);
 snprintf(tmp, sizeof(tmp), "(%s)[%zu]", a1, where);
 fprintf(stderr, "%20s = 0x%02x (expected 0x%02x)\n", tmp,
     ((u_char *)aa1)[where], v);
 test_die();
}
