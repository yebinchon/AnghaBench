
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; int * member_0; } ;
typedef int heim_bmp_string ;
typedef int generic_decode ;


 scalar_t__ der_get_bmp_string ;
 int generic_decode_fail (struct test_case*,int,int,int ) ;

__attribute__((used)) static int
check_fail_bmp_string(void)
{
    struct test_case tests[] = {
 {((void*)0), 1, "\x00", "odd (1) length bmpstring"},
 {((void*)0), 3, "\x00\x00\x00", "odd (3) length bmpstring"}
    };
    int ntests = sizeof(tests) / sizeof(*tests);

    return generic_decode_fail(tests, ntests, sizeof(heim_bmp_string),
          (generic_decode)der_get_bmp_string);
}
