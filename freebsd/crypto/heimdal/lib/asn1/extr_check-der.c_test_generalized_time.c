
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int tests ;
struct test_case {int member_1; char* member_2; int* val; int * name; int * member_0; } ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;


 scalar_t__ asprintf (int **,char*,int) ;
 int cmp_generalized_time ;
 scalar_t__ der_get_generalized_time ;
 scalar_t__ der_length_generalized_time ;
 scalar_t__ der_put_generalized_time ;
 int errx (int,char*) ;
 int free (int *) ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
test_generalized_time (void)
{
    struct test_case tests[] = {
 {((void*)0), 15, "19700101000000Z"},
 {((void*)0), 15, "19851106210627Z"}
    };
    time_t values[] = {0, 500159187};
    int i, ret;
    int ntests = sizeof(tests) / sizeof(*tests);

    for (i = 0; i < ntests; ++i) {
 tests[i].val = &values[i];
 if (asprintf (&tests[i].name, "time %d", (int)values[i]) < 0)
     errx(1, "malloc");
 if (tests[i].name == ((void*)0))
     errx(1, "malloc");
    }

    ret = generic_test (tests, ntests, sizeof(time_t),
   (generic_encode)der_put_generalized_time,
   (generic_length)der_length_generalized_time,
   (generic_decode)der_get_generalized_time,
   (generic_free)((void*)0),
   cmp_generalized_time,
   ((void*)0));
    for (i = 0; i < ntests; ++i)
 free(tests[i].name);
    return ret;
}
