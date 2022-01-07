
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tests ;
struct test_case {int member_1; char* member_2; int* val; int * name; int * member_0; } ;
struct TYPE_4__ {scalar_t__ length; } ;
typedef TYPE_1__ heim_integer ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;


 scalar_t__ asprintf (int **,char*,int) ;
 int der_free_heim_integer (TYPE_1__*) ;
 scalar_t__ der_get_boolean ;
 int der_get_heim_integer (int *,int ,TYPE_1__*,size_t*) ;
 scalar_t__ der_length_boolean ;
 scalar_t__ der_put_boolean ;
 int errx (int,char*) ;
 int free (int *) ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int *) ;
 int test_cmp_boolean ;

__attribute__((used)) static int
test_boolean (void)
{
    struct test_case tests[] = {
 {((void*)0), 1, "\xff"},
 {((void*)0), 1, "\x00"}
    };

    int values[] = { 1, 0 };
    int i, ret;
    int ntests = sizeof(tests) / sizeof(tests[0]);
    size_t size;
    heim_integer i2;

    for (i = 0; i < ntests; ++i) {
 tests[i].val = &values[i];
 if (asprintf (&tests[i].name, "heim_boolean %d", i) < 0)
     errx(1, "malloc");
 if (tests[i].name == ((void*)0))
     errx(1, "malloc");
    }

    ret = generic_test (tests, ntests, sizeof(int),
   (generic_encode)der_put_boolean,
   (generic_length)der_length_boolean,
   (generic_decode)der_get_boolean,
   (generic_free)((void*)0),
   test_cmp_boolean,
   ((void*)0));
    for (i = 0; i < ntests; ++i)
 free (tests[i].name);
    if (ret)
 return ret;


    ret = der_get_heim_integer(((void*)0), 0, &i2, &size);
    if (ret)
 errx(1, "der_get_heim_integer");
    if (i2.length != 0)
 errx(1, "der_get_heim_integer wrong length");
    der_free_heim_integer(&i2);

    return 0;
}
