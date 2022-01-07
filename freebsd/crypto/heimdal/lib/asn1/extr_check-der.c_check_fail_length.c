
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; int * member_0; } ;
typedef int generic_decode ;


 scalar_t__ der_get_length ;
 int generic_decode_fail (struct test_case*,int,int,int ) ;

__attribute__((used)) static int
check_fail_length(void)
{
    struct test_case tests[] = {
 {((void*)0), 0, "", "empty input data"},
 {((void*)0), 1, "\x82", "internal length overrun" }
    };
    int ntests = sizeof(tests) / sizeof(*tests);

    return generic_decode_fail(tests, ntests, sizeof(size_t),
          (generic_decode)der_get_length);
}
