
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tests ;
struct test_case {int member_1; char* member_2; int * name; TYPE_1__* val; int * member_0; } ;
struct TYPE_2__ {int member_0; int member_1; } ;
typedef TYPE_1__ heim_universal_string ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;


 scalar_t__ asprintf (int **,char*) ;
 int cmp_universal_string ;
 scalar_t__ der_free_universal_string ;
 scalar_t__ der_get_universal_string ;
 scalar_t__ der_length_universal_string ;
 scalar_t__ der_put_universal_string ;
 int errx (int,char*) ;
 int free (int *) ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int *) ;
 int universal_d1 ;
 int universal_d2 ;

__attribute__((used)) static int
test_universal_string (void)
{
    heim_universal_string s1 = { 1, universal_d1 };
    heim_universal_string s2 = { 2, universal_d2 };

    struct test_case tests[] = {
 {((void*)0), 4, "\x00\x00\x00\x20"},
 {((void*)0), 8, "\x00\x00\x00\x20\x00\x00\x00\x20"}
    };
    int ntests = sizeof(tests) / sizeof(*tests);
    int ret;

    tests[0].val = &s1;
    if (asprintf (&tests[0].name, "a universal string") < 0)
 errx(1, "malloc");
    if (tests[0].name == ((void*)0))
 errx(1, "malloc");
    tests[1].val = &s2;
    if (asprintf (&tests[1].name, "second universal string") < 0)
 errx(1, "malloc");
    if (tests[1].name == ((void*)0))
 errx(1, "malloc");

    ret = generic_test (tests, ntests, sizeof(heim_universal_string),
   (generic_encode)der_put_universal_string,
   (generic_length)der_length_universal_string,
   (generic_decode)der_get_universal_string,
   (generic_free)der_free_universal_string,
   cmp_universal_string,
   ((void*)0));
    free(tests[0].name);
    free(tests[1].name);
    return ret;
}
