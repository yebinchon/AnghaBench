
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; TYPE_1__* val; int * member_0; } ;
typedef int ku4 ;
typedef int ku3 ;
typedef int ku2 ;
typedef int ku1 ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;
typedef int generic_copy ;
struct TYPE_3__ {int digitalSignature; int keyEncipherment; int decipherOnly; } ;
typedef TYPE_1__ KeyUsage ;


 int cmp_KeyUsage ;
 scalar_t__ copy_KeyUsage ;
 scalar_t__ decode_KeyUsage ;
 scalar_t__ encode_KeyUsage ;
 scalar_t__ free_KeyUsage ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ length_KeyUsage ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
test_bit_string (void)
{
    struct test_case tests[] = {
 { ((void*)0), 4,
   "\x03\x02\x07\x80",
   "bitstring 1"
 },
 { ((void*)0), 4,
   "\x03\x02\x05\xa0",
   "bitstring 2"
 },
 { ((void*)0), 5,
   "\x03\x03\x07\x00\x80",
   "bitstring 3"
 },
 { ((void*)0), 3,
   "\x03\x01\x00",
   "bitstring 4"
 }
    };

    int ntests = sizeof(tests) / sizeof(*tests);
    KeyUsage ku1, ku2, ku3, ku4;

    memset(&ku1, 0, sizeof(ku1));
    ku1.digitalSignature = 1;
    tests[0].val = &ku1;

    memset(&ku2, 0, sizeof(ku2));
    ku2.digitalSignature = 1;
    ku2.keyEncipherment = 1;
    tests[1].val = &ku2;

    memset(&ku3, 0, sizeof(ku3));
    ku3.decipherOnly = 1;
    tests[2].val = &ku3;

    memset(&ku4, 0, sizeof(ku4));
    tests[3].val = &ku4;


    return generic_test (tests, ntests, sizeof(KeyUsage),
    (generic_encode)encode_KeyUsage,
    (generic_length)length_KeyUsage,
    (generic_decode)decode_KeyUsage,
    (generic_free)free_KeyUsage,
    cmp_KeyUsage,
    (generic_copy)copy_KeyUsage);
}
