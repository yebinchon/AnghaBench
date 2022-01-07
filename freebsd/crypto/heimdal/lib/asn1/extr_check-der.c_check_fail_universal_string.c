
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; int * member_0; } ;
typedef int heim_universal_string ;
typedef int generic_decode ;


 scalar_t__ der_get_universal_string ;
 int generic_decode_fail (struct test_case*,int,int,int ) ;

__attribute__((used)) static int
check_fail_universal_string(void)
{
    struct test_case tests[] = {
 {((void*)0), 1, "\x00", "x & 3 == 1 universal string"},
 {((void*)0), 2, "\x00\x00", "x & 3 == 2 universal string"},
 {((void*)0), 3, "\x00\x00\x00", "x & 3 == 3 universal string"},
 {((void*)0), 5, "\x00\x00\x00\x00\x00", "x & 3 == 1 universal string"},
 {((void*)0), 6, "\x00\x00\x00\x00\x00\x00", "x & 3 == 2 universal string"},
 {((void*)0), 7, "\x00\x00\x00\x00\x00\x00\x00", "x & 3 == 3 universal string"}
    };
    int ntests = sizeof(tests) / sizeof(*tests);

    return generic_decode_fail(tests, ntests, sizeof(heim_universal_string),
          (generic_decode)der_get_universal_string);
}
