
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
struct test_case {int member_1; char* member_2; unsigned int* val; int * name; int * member_0; } ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;


 scalar_t__ asprintf (int **,char*,unsigned int) ;
 int cmp_unsigned ;
 scalar_t__ der_get_unsigned ;
 scalar_t__ der_length_unsigned ;
 scalar_t__ der_put_unsigned ;
 int errx (int,char*) ;
 int free (int *) ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
test_unsigned (void)
{
    struct test_case tests[] = {
 {((void*)0), 1, "\x00"},
 {((void*)0), 1, "\x7f"},
 {((void*)0), 2, "\x00\x80"},
 {((void*)0), 2, "\x01\x00"},
 {((void*)0), 2, "\x02\x00"},
 {((void*)0), 3, "\x00\x80\x00"},
 {((void*)0), 5, "\x00\x80\x00\x00\x00"},
 {((void*)0), 4, "\x7f\xff\xff\xff"}
    };

    unsigned int values[] = {0, 127, 128, 256, 512, 32768,
        0x80000000, 0x7fffffff};
    int i, ret;
    int ntests = sizeof(tests) / sizeof(*tests);

    for (i = 0; i < ntests; ++i) {
 tests[i].val = &values[i];
 if (asprintf (&tests[i].name, "unsigned %u", values[i]) < 0)
     errx(1, "malloc");
 if (tests[i].name == ((void*)0))
     errx(1, "malloc");
    }

    ret = generic_test (tests, ntests, sizeof(int),
   (generic_encode)der_put_unsigned,
   (generic_length)der_length_unsigned,
   (generic_decode)der_get_unsigned,
   (generic_free)((void*)0),
   cmp_unsigned,
   ((void*)0));
    for (i = 0; i < ntests; ++i)
 free (tests[i].name);
    return ret;
}
