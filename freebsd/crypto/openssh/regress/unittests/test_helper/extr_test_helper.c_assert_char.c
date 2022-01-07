
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;


 int TEST_CHECK (char,char,int) ;
 int VIS_NL ;
 int VIS_OCTAL ;
 int VIS_SAFE ;
 int VIS_TAB ;
 int fprintf (int ,char*,char const*,char*,char) ;
 int stderr ;
 int test_die () ;
 int test_header (char const*,int,char const*,char const*,char*,int) ;
 char* vis (char*,char,int,int ) ;

void
assert_char(const char *file, int line, const char *a1, const char *a2,
    char aa1, char aa2, enum test_predicate pred)
{
 char buf[8];

 TEST_CHECK(aa1, aa2, pred);
 test_header(file, line, a1, a2, "CHAR", pred);
 fprintf(stderr, "%12s = '%s' / 0x02%x\n", a1,
     vis(buf, aa1, VIS_SAFE|VIS_NL|VIS_TAB|VIS_OCTAL, 0), aa1);
 fprintf(stderr, "%12s = '%s' / 0x02%x\n", a1,
     vis(buf, aa2, VIS_SAFE|VIS_NL|VIS_TAB|VIS_OCTAL, 0), aa2);
 test_die();
}
