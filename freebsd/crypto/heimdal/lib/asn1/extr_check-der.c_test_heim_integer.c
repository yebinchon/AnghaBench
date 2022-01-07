
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tests ;
struct test_case {int member_1; char* member_2; int * name; TYPE_1__* val; int * member_0; } ;
struct TYPE_4__ {int member_0; char* member_1; int member_2; scalar_t__ length; } ;
typedef TYPE_1__ heim_integer ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;


 scalar_t__ asprintf (int **,char*,int) ;
 int der_free_heim_integer (TYPE_1__*) ;
 int der_get_heim_integer (int *,int ,TYPE_1__*,size_t*) ;
 scalar_t__ der_length_heim_integer ;
 scalar_t__ der_put_heim_integer ;
 int errx (int,char*) ;
 int free (int *) ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int *) ;
 int test_cmp_heim_integer ;

__attribute__((used)) static int
test_heim_integer (void)
{
    struct test_case tests[] = {
 {((void*)0), 2, "\xfe\x01"},
 {((void*)0), 2, "\xef\x01"},
 {((void*)0), 3, "\xff\x00\xff"},
 {((void*)0), 3, "\xff\x01\x00"},
 {((void*)0), 1, "\x00"},
 {((void*)0), 1, "\x01"},
 {((void*)0), 2, "\x00\x80"}
    };

    heim_integer values[] = {
 { 2, "\x01\xff", 1 },
 { 2, "\x10\xff", 1 },
 { 2, "\xff\x01", 1 },
 { 2, "\xff\x00", 1 },
 { 0, "", 0 },
 { 1, "\x01", 0 },
 { 1, "\x80", 0 }
    };
    int i, ret;
    int ntests = sizeof(tests) / sizeof(tests[0]);
    size_t size;
    heim_integer i2;

    for (i = 0; i < ntests; ++i) {
 tests[i].val = &values[i];
 if (asprintf (&tests[i].name, "heim_integer %d", i) < 0)
     errx(1, "malloc");
 if (tests[i].name == ((void*)0))
     errx(1, "malloc");
    }

    ret = generic_test (tests, ntests, sizeof(heim_integer),
   (generic_encode)der_put_heim_integer,
   (generic_length)der_length_heim_integer,
   (generic_decode)der_get_heim_integer,
   (generic_free)der_free_heim_integer,
   test_cmp_heim_integer,
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
