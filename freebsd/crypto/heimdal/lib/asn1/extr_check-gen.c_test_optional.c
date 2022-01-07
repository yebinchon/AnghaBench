
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; TYPE_1__* val; int * member_0; } ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;
typedef int generic_copy ;
struct TYPE_2__ {int* zero; int* one; } ;
typedef TYPE_1__ TESTOptional ;


 int cmp_TESTOptional ;
 scalar_t__ copy_TESTOptional ;
 scalar_t__ decode_TESTOptional ;
 scalar_t__ encode_TESTOptional ;
 scalar_t__ free_TESTOptional ;
 scalar_t__ generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ length_TESTOptional ;

__attribute__((used)) static int
test_optional (void)
{
    struct test_case tests[] = {
 { ((void*)0), 2,
   "\x30\x00",
   "optional 0" },
 { ((void*)0), 7,
   "\x30\x05\xa0\x03\x02\x01\x00",
   "optional 1" },
 { ((void*)0), 7,
   "\x30\x05\xa1\x03\x02\x01\x01",
   "optional 2" },
 { ((void*)0), 12,
   "\x30\x0a\xa0\x03\x02\x01\x00\xa1\x03\x02\x01\x01",
   "optional 3" }
    };

    int ret = 0, ntests = sizeof(tests) / sizeof(*tests);
    TESTOptional c0, c1, c2, c3;
    int zero = 0;
    int one = 1;

    c0.zero = ((void*)0);
    c0.one = ((void*)0);
    tests[0].val = &c0;

    c1.zero = &zero;
    c1.one = ((void*)0);
    tests[1].val = &c1;

    c2.zero = ((void*)0);
    c2.one = &one;
    tests[2].val = &c2;

    c3.zero = &zero;
    c3.one = &one;
    tests[3].val = &c3;

    ret += generic_test (tests, ntests, sizeof(TESTOptional),
    (generic_encode)encode_TESTOptional,
    (generic_length)length_TESTOptional,
    (generic_decode)decode_TESTOptional,
    (generic_free)free_TESTOptional,
    cmp_TESTOptional,
    (generic_copy)copy_TESTOptional);

    return ret;
}
