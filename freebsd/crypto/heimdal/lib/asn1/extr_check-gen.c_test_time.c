
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; int* val; int * member_0; } ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;
typedef int generic_copy ;
typedef int KerberosTime ;


 int cmp_KerberosTime ;
 scalar_t__ copy_KerberosTime ;
 scalar_t__ decode_KerberosTime ;
 scalar_t__ encode_KerberosTime ;
 scalar_t__ free_KerberosTime ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ length_KerberosTime ;

__attribute__((used)) static int
test_time (void)
{
    struct test_case tests[] = {
 { ((void*)0), 17,
   "\x18\x0f\x31\x39\x37\x30\x30\x31\x30\x31\x30\x31\x31\x38\x33\x31"
   "\x5a",
   "time 1" },
 { ((void*)0), 17,
   "\x18\x0f\x32\x30\x30\x39\x30\x35\x32\x34\x30\x32\x30\x32\x34\x30"
   "\x5a"
   "time 2" }
    };

    int ntests = sizeof(tests) / sizeof(*tests);
    KerberosTime times[] = {
 4711,
 1243130560
    };

    tests[0].val = &times[0];
    tests[1].val = &times[1];

    return generic_test (tests, ntests, sizeof(KerberosTime),
    (generic_encode)encode_KerberosTime,
    (generic_length)length_KerberosTime,
    (generic_decode)decode_KerberosTime,
    (generic_free)free_KerberosTime,
    cmp_KerberosTime,
    (generic_copy)copy_KerberosTime);
}
