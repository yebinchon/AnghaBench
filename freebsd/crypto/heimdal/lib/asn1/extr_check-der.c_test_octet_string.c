
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tests ;
struct test_case {int member_1; char* member_2; int * name; TYPE_1__* val; int * member_0; } ;
struct TYPE_2__ {int member_0; char* member_1; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;


 scalar_t__ asprintf (int **,char*) ;
 int cmp_octet_string ;
 scalar_t__ der_free_octet_string ;
 scalar_t__ der_get_octet_string ;
 scalar_t__ der_length_octet_string ;
 scalar_t__ der_put_octet_string ;
 int errx (int,char*) ;
 int free (int *) ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
test_octet_string (void)
{
    heim_octet_string s1 = {8, "\x01\x23\x45\x67\x89\xab\xcd\xef"};

    struct test_case tests[] = {
 {((void*)0), 8, "\x01\x23\x45\x67\x89\xab\xcd\xef"}
    };
    int ntests = sizeof(tests) / sizeof(*tests);
    int ret;

    tests[0].val = &s1;
    if (asprintf (&tests[0].name, "a octet string") < 0)
 errx(1, "malloc");
    if (tests[0].name == ((void*)0))
 errx(1, "malloc");

    ret = generic_test (tests, ntests, sizeof(heim_octet_string),
   (generic_encode)der_put_octet_string,
   (generic_length)der_length_octet_string,
   (generic_decode)der_get_octet_string,
   (generic_free)der_free_octet_string,
   cmp_octet_string,
   ((void*)0));
    free(tests[0].name);
    return ret;
}
