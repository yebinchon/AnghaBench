
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; int * member_0; } ;
typedef int generic_decode ;
typedef int TESTLargeTag ;


 scalar_t__ decode_TESTLargeTag ;
 int generic_decode_fail (struct test_case*,int,int,int ) ;

__attribute__((used)) static int
check_fail_largetag(void)
{
    struct test_case tests[] = {
 {((void*)0), 14, "\x30\x0c\xbf\x87\xff\xff\xff\xff\xff\x7f\x03\x02\x01\x01",
  "tag overflow"},
 {((void*)0), 0, "", "empty buffer"},
 {((void*)0), 7, "\x30\x05\xa1\x03\x02\x02\x01",
  "one too short" },
 {((void*)0), 7, "\x30\x04\xa1\x03\x02\x02\x01"
  "two too short" },
 {((void*)0), 7, "\x30\x03\xa1\x03\x02\x02\x01",
  "three too short" },
 {((void*)0), 7, "\x30\x02\xa1\x03\x02\x02\x01",
  "four too short" },
 {((void*)0), 7, "\x30\x01\xa1\x03\x02\x02\x01",
  "five too short" },
 {((void*)0), 7, "\x30\x00\xa1\x03\x02\x02\x01",
  "six too short" },
 {((void*)0), 7, "\x30\x05\xa1\x04\x02\x02\x01",
  "inner one too long" },
 {((void*)0), 7, "\x30\x00\xa1\x02\x02\x02\x01",
  "inner one too short" },
 {((void*)0), 8, "\x30\x05\xbf\x7f\x03\x02\x02\x01",
  "inner one too short"},
 {((void*)0), 8, "\x30\x06\xbf\x64\x03\x02\x01\x01",
  "wrong tag"},
 {((void*)0), 10, "\x30\x08\xbf\x9a\x9b\x38\x03\x02\x01\x01",
  "still wrong tag"}
    };
    int ntests = sizeof(tests) / sizeof(*tests);

    return generic_decode_fail(tests, ntests, sizeof(TESTLargeTag),
          (generic_decode)decode_TESTLargeTag);
}
