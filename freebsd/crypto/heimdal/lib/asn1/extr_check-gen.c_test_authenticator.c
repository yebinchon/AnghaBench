
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tests ;
struct test_case {int member_1; char* member_2; int * name; TYPE_3__* val; int * member_0; } ;
typedef int generic_length ;
typedef int generic_free ;
typedef int generic_encode ;
typedef int generic_decode ;
typedef int generic_copy ;
struct TYPE_5__ {int member_0; int member_1; } ;
struct TYPE_4__ {TYPE_2__ member_1; int member_0; } ;
struct TYPE_6__ {int member_0; char* member_1; int member_4; int member_5; int * member_8; int * member_7; int * member_6; int * member_3; TYPE_1__ member_2; } ;
typedef TYPE_3__ Authenticator ;


 int KRB5_NT_PRINCIPAL ;
 scalar_t__ asprintf (int **,char*,int) ;
 int cmp_authenticator ;
 scalar_t__ copy_Authenticator ;
 scalar_t__ decode_Authenticator ;
 scalar_t__ encode_Authenticator ;
 int errx (int,char*) ;
 int free (int *) ;
 scalar_t__ free_Authenticator ;
 int generic_test (struct test_case*,int,int,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ length_Authenticator ;
 int lha_principal ;
 int lharoot_princ ;

__attribute__((used)) static int
test_authenticator (void)
{
    struct test_case tests[] = {
 { ((void*)0), 63,
   "\x62\x3d\x30\x3b\xa0\x03\x02\x01\x05\xa1\x0a\x1b\x08"
   "\x45\x2e\x4b\x54\x48\x2e\x53\x45\xa2\x10\x30\x0e\xa0"
   "\x03\x02\x01\x01\xa1\x07\x30\x05\x1b\x03\x6c\x68\x61"
   "\xa4\x03\x02\x01\x0a\xa5\x11\x18\x0f\x31\x39\x37\x30"
   "\x30\x31\x30\x31\x30\x30\x30\x31\x33\x39\x5a"
 },
 { ((void*)0), 67,
   "\x62\x41\x30\x3f\xa0\x03\x02\x01\x05\xa1\x07\x1b\x05"
   "\x53\x55\x2e\x53\x45\xa2\x16\x30\x14\xa0\x03\x02\x01"
   "\x01\xa1\x0d\x30\x0b\x1b\x03\x6c\x68\x61\x1b\x04\x72"
   "\x6f\x6f\x74\xa4\x04\x02\x02\x01\x24\xa5\x11\x18\x0f"
   "\x31\x39\x37\x30\x30\x31\x30\x31\x30\x30\x31\x36\x33"
   "\x39\x5a"
 }
    };

    Authenticator values[] = {
 { 5, "E.KTH.SE", { KRB5_NT_PRINCIPAL, { 1, lha_principal } },
   ((void*)0), 10, 99, ((void*)0), ((void*)0), ((void*)0) },
 { 5, "SU.SE", { KRB5_NT_PRINCIPAL, { 2, lharoot_princ } },
   ((void*)0), 292, 999, ((void*)0), ((void*)0), ((void*)0) }
    };
    int i, ret;
    int ntests = sizeof(tests) / sizeof(*tests);

    for (i = 0; i < ntests; ++i) {
 tests[i].val = &values[i];
 if (asprintf (&tests[i].name, "Authenticator %d", i) < 0)
     errx(1, "malloc");
 if (tests[i].name == ((void*)0))
     errx(1, "malloc");
    }

    ret = generic_test (tests, ntests, sizeof(Authenticator),
   (generic_encode)encode_Authenticator,
   (generic_length)length_Authenticator,
   (generic_decode)decode_Authenticator,
   (generic_free)free_Authenticator,
   cmp_authenticator,
   (generic_copy)copy_Authenticator);
    for (i = 0; i < ntests; ++i)
 free(tests[i].name);

    return ret;
}
