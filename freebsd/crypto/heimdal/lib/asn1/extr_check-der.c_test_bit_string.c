
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tests ;
struct test_case {int member_1; char* member_2; int * name; TYPE_1__* val; int * member_0; } ;
struct TYPE_2__ {char* member_1; int member_0; } ;
typedef TYPE_1__ heim_bit_string ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;


 scalar_t__ asprintf (int **,char*,int) ;
 scalar_t__ der_free_bit_string ;
 scalar_t__ der_get_bit_string ;
 scalar_t__ der_length_bit_string ;
 scalar_t__ der_put_bit_string ;
 int errx (int,char*) ;
 int free (int *) ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int *) ;
 int test_cmp_bit_string ;

__attribute__((used)) static int
test_bit_string (void)
{
    struct test_case tests[] = {
 {((void*)0), 1, "\x00"}
    };
    heim_bit_string values[] = {
 { 0, "" }
    };
    int i, ret;
    int ntests = sizeof(tests) / sizeof(*tests);

    for (i = 0; i < ntests; ++i) {
 tests[i].val = &values[i];
 if (asprintf (&tests[i].name, "bit_string %d", i) < 0)
     errx(1, "malloc");
 if (tests[i].name == ((void*)0))
     errx(1, "malloc");
    }

    ret = generic_test (tests, ntests, sizeof(heim_bit_string),
   (generic_encode)der_put_bit_string,
   (generic_length)der_length_bit_string,
   (generic_decode)der_get_bit_string,
   (generic_free)der_free_bit_string,
   test_cmp_bit_string,
   ((void*)0));
    for (i = 0; i < ntests; ++i)
 free(tests[i].name);
    return ret;
}
