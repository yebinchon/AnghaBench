
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int type3 ;
typedef int type2 ;
typedef int type1 ;
struct TYPE_3__ {char* data; int length; } ;
struct TYPE_4__ {int data; } ;
struct ntlm_type3 {int flags; TYPE_1__ targetinfo; void* targetname; struct ntlm_type3* challenge; void* username; void* ws; TYPE_2__ ntlm; scalar_t__* os; int * hostname; void* domain; } ;
struct ntlm_type2 {int flags; TYPE_1__ targetinfo; void* targetname; struct ntlm_type2* challenge; void* username; void* ws; TYPE_2__ ntlm; scalar_t__* os; int * hostname; void* domain; } ;
struct ntlm_type1 {int flags; TYPE_1__ targetinfo; void* targetname; struct ntlm_type1* challenge; void* username; void* ws; TYPE_2__ ntlm; scalar_t__* os; int * hostname; void* domain; } ;
struct ntlm_buf {int data; int length; } ;


 int NTLM_NEG_NTLM ;
 int NTLM_NEG_TARGET ;
 int NTLM_NEG_UNICODE ;
 int NTLM_TARGET_DOMAIN ;
 int errx (int,char*) ;
 int free (int ) ;
 int heim_ntlm_calculate_ntlm1 (int ,int ,struct ntlm_type3*,TYPE_2__*) ;
 int heim_ntlm_decode_type1 (struct ntlm_buf*,struct ntlm_type3*) ;
 int heim_ntlm_decode_type2 (struct ntlm_buf*,struct ntlm_type3*) ;
 int heim_ntlm_decode_type3 (struct ntlm_buf*,int,struct ntlm_type3*) ;
 int heim_ntlm_encode_type1 (struct ntlm_type3*,struct ntlm_buf*) ;
 int heim_ntlm_encode_type2 (struct ntlm_type3*,struct ntlm_buf*) ;
 int heim_ntlm_encode_type3 (struct ntlm_type3*,struct ntlm_buf*) ;
 int heim_ntlm_free_type1 (struct ntlm_type3*) ;
 int heim_ntlm_free_type2 (struct ntlm_type3*) ;
 int heim_ntlm_free_type3 (struct ntlm_type3*) ;
 int heim_ntlm_nt_key (char const*,struct ntlm_buf*) ;
 int memset (struct ntlm_type3*,int,int) ;
 void* rk_UNCONST (char const*) ;
 scalar_t__ strcmp (char const*,void*) ;

__attribute__((used)) static int
test_parse(void)
{
    const char *user = "foo",
 *domain = "mydomain",
 *password = "digestpassword",
 *target = "DOMAIN";
    struct ntlm_type1 type1;
    struct ntlm_type2 type2;
    struct ntlm_type3 type3;
    struct ntlm_buf data;
    int ret, flags;

    memset(&type1, 0, sizeof(type1));

    type1.flags = NTLM_NEG_UNICODE|NTLM_NEG_TARGET|NTLM_NEG_NTLM;
    type1.domain = rk_UNCONST(domain);
    type1.hostname = ((void*)0);
    type1.os[0] = 0;
    type1.os[1] = 0;

    ret = heim_ntlm_encode_type1(&type1, &data);
    if (ret)
 errx(1, "heim_ntlm_encode_type1");

    memset(&type1, 0, sizeof(type1));

    ret = heim_ntlm_decode_type1(&data, &type1);
    free(data.data);
    if (ret)
 errx(1, "heim_ntlm_encode_type1");

    heim_ntlm_free_type1(&type1);





    memset(&type2, 0, sizeof(type2));

    flags = NTLM_NEG_UNICODE | NTLM_NEG_NTLM | NTLM_TARGET_DOMAIN;
    type2.flags = flags;

    memset(type2.challenge, 0x7f, sizeof(type2.challenge));
    type2.targetname = rk_UNCONST(target);
    type2.targetinfo.data = ((void*)0);
    type2.targetinfo.length = 0;

    ret = heim_ntlm_encode_type2(&type2, &data);
    if (ret)
 errx(1, "heim_ntlm_encode_type2");

    memset(&type2, 0, sizeof(type2));

    ret = heim_ntlm_decode_type2(&data, &type2);
    free(data.data);
    if (ret)
 errx(1, "heim_ntlm_decode_type2");

    heim_ntlm_free_type2(&type2);





    memset(&type3, 0, sizeof(type3));

    type3.flags = flags;
    type3.username = rk_UNCONST(user);
    type3.targetname = rk_UNCONST(target);
    type3.ws = rk_UNCONST("workstation");

    {
 struct ntlm_buf key;
 heim_ntlm_nt_key(password, &key);

 heim_ntlm_calculate_ntlm1(key.data, key.length,
      type2.challenge,
      &type3.ntlm);
 free(key.data);
    }

    ret = heim_ntlm_encode_type3(&type3, &data);
    if (ret)
 errx(1, "heim_ntlm_encode_type3");

    free(type3.ntlm.data);

    memset(&type3, 0, sizeof(type3));

    ret = heim_ntlm_decode_type3(&data, 1, &type3);
    free(data.data);
    if (ret)
 errx(1, "heim_ntlm_decode_type3");

    if (strcmp("workstation", type3.ws) != 0)
 errx(1, "type3 ws wrong");

    if (strcmp(target, type3.targetname) != 0)
 errx(1, "type3 targetname wrong");

    if (strcmp(user, type3.username) != 0)
 errx(1, "type3 username wrong");


    heim_ntlm_free_type3(&type3);





    memset(&type2, 0, sizeof(type2));

    flags = NTLM_NEG_UNICODE | NTLM_NEG_NTLM | NTLM_TARGET_DOMAIN;
    type2.flags = flags;

    memset(type2.challenge, 0x7f, sizeof(type2.challenge));
    type2.targetname = rk_UNCONST(target);
    type2.targetinfo.data = "\x00\x00";
    type2.targetinfo.length = 2;

    ret = heim_ntlm_encode_type2(&type2, &data);
    if (ret)
 errx(1, "heim_ntlm_encode_type2");

    memset(&type2, 0, sizeof(type2));

    ret = heim_ntlm_decode_type2(&data, &type2);
    free(data.data);
    if (ret)
 errx(1, "heim_ntlm_decode_type2");

    heim_ntlm_free_type2(&type2);

    return 0;
}
