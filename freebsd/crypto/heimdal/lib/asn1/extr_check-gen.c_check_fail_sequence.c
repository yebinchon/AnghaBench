
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; int * member_0; } ;
typedef int generic_decode ;
typedef int TESTSeq ;


 scalar_t__ decode_TESTSeq ;
 int generic_decode_fail (struct test_case*,int,int,int ) ;

__attribute__((used)) static int
check_fail_sequence(void)
{
    struct test_case tests[] = {
 {((void*)0), 0, "", "empty buffer"},
 {((void*)0), 24,
  "\x30\x16\xa0\x03\x02\x01\x01\xa1\x08\x30\x06\xbf\x7f\x03\x02\x01\x01"
  "\x02\x01\x01\xa2\x03\x02\x01\x01"
  "missing one byte from the end, internal length ok"},
 {((void*)0), 25,
  "\x30\x18\xa0\x03\x02\x01\x01\xa1\x08\x30\x06\xbf\x7f\x03\x02\x01\x01"
  "\x02\x01\x01\xa2\x03\x02\x01\x01",
  "inner length one byte too long"},
 {((void*)0), 24,
  "\x30\x17\xa0\x03\x02\x01\x01\xa1\x08\x30\x06\xbf\x7f\x03\x02\x01"
  "\x01\x02\x01\x01\xa2\x03\x02\x01\x01",
  "correct buffer but missing one too short"}
    };
    int ntests = sizeof(tests) / sizeof(*tests);

    return generic_decode_fail(tests, ntests, sizeof(TESTSeq),
          (generic_decode)decode_TESTSeq);
}
