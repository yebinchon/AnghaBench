
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tests ;
struct test_case {int member_1; char* member_2; int * name; TYPE_1__* val; int * member_0; } ;
struct TYPE_2__ {int member_0; int member_1; } ;
typedef TYPE_1__ heim_oid ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;


 scalar_t__ asprintf (int **,char*,int) ;
 scalar_t__ der_free_oid ;
 scalar_t__ der_get_oid ;
 scalar_t__ der_length_oid ;
 scalar_t__ der_put_oid ;
 int errx (int,char*) ;
 int free (int *) ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int *) ;
 int oid_comp1 ;
 int oid_comp2 ;
 int oid_comp3 ;
 int oid_comp4 ;
 int test_cmp_oid ;

__attribute__((used)) static int
test_oid (void)
{
    struct test_case tests[] = {
 {((void*)0), 2, "\x29\x01"},
 {((void*)0), 1, "\x29"},
 {((void*)0), 2, "\xff\x01"},
 {((void*)0), 1, "\xff"}
    };
    heim_oid values[] = {
 { 3, oid_comp1 },
 { 2, oid_comp2 },
 { 3, oid_comp3 },
 { 2, oid_comp4 }
    };
    int i, ret;
    int ntests = sizeof(tests) / sizeof(*tests);

    for (i = 0; i < ntests; ++i) {
 tests[i].val = &values[i];
 if (asprintf (&tests[i].name, "oid %d", i) < 0)
     errx(1, "malloc");
 if (tests[i].name == ((void*)0))
     errx(1, "malloc");
    }

    ret = generic_test (tests, ntests, sizeof(heim_oid),
   (generic_encode)der_put_oid,
   (generic_length)der_length_oid,
   (generic_decode)der_get_oid,
   (generic_free)der_free_oid,
   test_cmp_oid,
   ((void*)0));
    for (i = 0; i < ntests; ++i)
 free(tests[i].name);
    return ret;
}
