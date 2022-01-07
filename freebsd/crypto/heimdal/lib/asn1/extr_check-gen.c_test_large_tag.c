
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; TYPE_1__* val; int * member_0; } ;
typedef int lt1 ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;
typedef int generic_copy ;
struct TYPE_3__ {int foo; int bar; } ;
typedef TYPE_1__ TESTLargeTag ;


 int cmp_TESTLargeTag ;
 scalar_t__ copy_TESTLargeTag ;
 scalar_t__ decode_TESTLargeTag ;
 scalar_t__ encode_TESTLargeTag ;
 scalar_t__ free_TESTLargeTag ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ length_TESTLargeTag ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
test_large_tag (void)
{
    struct test_case tests[] = {
 { ((void*)0), 15, "\x30\x0d\xbf\x7f\x03\x02\x01\x01\xbf\x81\x00\x03\x02\x01\x02", "large tag 1" }
    };

    int ntests = sizeof(tests) / sizeof(*tests);
    TESTLargeTag lt1;

    memset(&lt1, 0, sizeof(lt1));
    lt1.foo = 1;
    lt1.bar = 2;

    tests[0].val = &lt1;

    return generic_test (tests, ntests, sizeof(TESTLargeTag),
    (generic_encode)encode_TESTLargeTag,
    (generic_length)length_TESTLargeTag,
    (generic_decode)decode_TESTLargeTag,
    (generic_free)free_TESTLargeTag,
    cmp_TESTLargeTag,
    (generic_copy)copy_TESTLargeTag);
}
