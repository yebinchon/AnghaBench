
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tf4 ;
typedef int tf3 ;
typedef int tf2 ;
typedef int tf1 ;
typedef int tests ;
struct test_case {int member_1; char* member_2; char* member_3; TYPE_1__* val; int * member_0; } ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;
typedef int generic_copy ;
struct TYPE_3__ {int reserved; int forwardable; int pre_authent; } ;
typedef TYPE_1__ TicketFlags ;


 int cmp_TicketFlags ;
 scalar_t__ copy_TicketFlags ;
 scalar_t__ decode_TicketFlags ;
 scalar_t__ encode_TicketFlags ;
 scalar_t__ free_TicketFlags ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ length_TicketFlags ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
test_bit_string_rfc1510 (void)
{
    struct test_case tests[] = {
 { ((void*)0), 7,
   "\x03\x05\x00\x80\x00\x00\x00",
   "TF bitstring 1"
 },
 { ((void*)0), 7,
   "\x03\x05\x00\x40\x20\x00\x00",
   "TF bitstring 2"
 },
 { ((void*)0), 7,
   "\x03\x05\x00\x00\x20\x00\x00",
   "TF bitstring 3"
 },
 { ((void*)0), 7,
   "\x03\x05\x00\x00\x00\x00\x00",
   "TF bitstring 4"
 }
    };

    int ntests = sizeof(tests) / sizeof(*tests);
    TicketFlags tf1, tf2, tf3, tf4;

    memset(&tf1, 0, sizeof(tf1));
    tf1.reserved = 1;
    tests[0].val = &tf1;

    memset(&tf2, 0, sizeof(tf2));
    tf2.forwardable = 1;
    tf2.pre_authent = 1;
    tests[1].val = &tf2;

    memset(&tf3, 0, sizeof(tf3));
    tf3.pre_authent = 1;
    tests[2].val = &tf3;

    memset(&tf4, 0, sizeof(tf4));
    tests[3].val = &tf4;


    return generic_test (tests, ntests, sizeof(TicketFlags),
    (generic_encode)encode_TicketFlags,
    (generic_length)length_TicketFlags,
    (generic_decode)decode_TicketFlags,
    (generic_free)free_TicketFlags,
    cmp_TicketFlags,
    (generic_copy)copy_TicketFlags);
}
