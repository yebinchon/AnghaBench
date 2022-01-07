
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;


 char* active_test_name ;
 int fprintf (int ,char*,char const*,...) ;
 char* pred_name (int) ;
 int stderr ;
 char* subtest_info ;
 int test_number ;

__attribute__((used)) static void
test_header(const char *file, int line, const char *a1, const char *a2,
    const char *name, enum test_predicate pred)
{
 fprintf(stderr, "\n%s:%d test #%u \"%s\"%s%s\n",
     file, line, test_number, active_test_name,
     *subtest_info != '\0' ? " - " : "", subtest_info);
 fprintf(stderr, "ASSERT_%s_%s(%s%s%s) failed:\n",
     name, pred_name(pred), a1,
     a2 != ((void*)0) ? ", " : "", a2 != ((void*)0) ? a2 : "");
}
