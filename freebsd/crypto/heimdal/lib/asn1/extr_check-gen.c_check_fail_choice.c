
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; int * member_0; } ;
typedef int generic_decode ;
typedef int TESTChoice1 ;


 scalar_t__ decode_TESTChoice1 ;
 int generic_decode_fail (struct test_case*,int,int,int ) ;

__attribute__((used)) static int
check_fail_choice(void)
{
    struct test_case tests[] = {
 {((void*)0), 6,
  "\xa1\x02\x02\x01\x01",
  "choice one too short"},
 {((void*)0), 6,
  "\xa1\x03\x02\x02\x01",
  "choice one too short inner"}
    };
    int ntests = sizeof(tests) / sizeof(*tests);

    return generic_decode_fail(tests, ntests, sizeof(TESTChoice1),
          (generic_decode)decode_TESTChoice1);
}
