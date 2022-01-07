
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
struct test_case {int member_1; char* member_2; char** val; int * name; int * member_0; } ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;


 scalar_t__ asprintf (int **,char*,char*) ;
 int cmp_general_string ;
 scalar_t__ der_free_general_string ;
 scalar_t__ der_get_general_string ;
 scalar_t__ der_length_general_string ;
 scalar_t__ der_put_general_string ;
 int errx (int,char*) ;
 int free (int *) ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
test_general_string (void)
{
    char *s1 = "Test User 1";

    struct test_case tests[] = {
 {((void*)0), 11, "\x54\x65\x73\x74\x20\x55\x73\x65\x72\x20\x31"}
    };
    int ret, ntests = sizeof(tests) / sizeof(*tests);

    tests[0].val = &s1;
    if (asprintf (&tests[0].name, "the string \"%s\"", s1) < 0)
 errx(1, "malloc");
    if (tests[0].name == ((void*)0))
 errx(1, "malloc");

    ret = generic_test (tests, ntests, sizeof(unsigned char *),
   (generic_encode)der_put_general_string,
   (generic_length)der_length_general_string,
   (generic_decode)der_get_general_string,
   (generic_free)der_free_general_string,
   cmp_general_string,
   ((void*)0));
    free(tests[0].name);
    return ret;
}
