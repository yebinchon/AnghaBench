
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; int * member_0; } ;
typedef int heim_bit_string ;
typedef int generic_decode ;


 scalar_t__ der_get_bit_string ;
 int generic_decode_fail (struct test_case*,int,int,int ) ;

__attribute__((used)) static int
check_fail_bitstring(void)
{
    struct test_case tests[] = {
 {((void*)0), 0, "", "empty input data"},
 {((void*)0), 1, "\x08", "larger then 8 bits trailer"},
 {((void*)0), 1, "\x01", "to few bytes for bits"},
 {((void*)0), -2, "\x00", "length overrun"},
 {((void*)0), -1, "", "length to short"}
    };
    int ntests = sizeof(tests) / sizeof(*tests);

    return generic_decode_fail(tests, ntests, sizeof(heim_bit_string),
          (generic_decode)der_get_bit_string);
}
