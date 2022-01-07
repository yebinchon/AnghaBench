
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ time_t ;
struct ntlm_buf {int length; unsigned char* data; } ;
typedef int krb5_storage ;
typedef int krb5_error_code ;


 int CHECK (int,int) ;
 int ENOMEM ;
 int HNTLM_ERR_AUTH ;
 int HNTLM_ERR_INVALID_LENGTH ;
 int HNTLM_ERR_TIME_SKEW ;
 int KRB5_STORAGE_BYTEORDER_LE ;
 int SEEK_CUR ;
 scalar_t__ abs (int) ;
 scalar_t__ authtimediff ;
 int heim_ntlm_derive_ntlm2_sess (unsigned char*,unsigned char*,int,unsigned char const*,unsigned char*) ;
 int heim_ntlm_free_buf (struct ntlm_buf*) ;
 int heim_ntlm_ntlmv2_key (void const*,size_t,char const*,char const*,unsigned char*) ;
 int krb5_ret_uint32 (int *,int*) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_readonly_mem (unsigned char*,int) ;
 int krb5_storage_read (int *,unsigned char*,int) ;
 int krb5_storage_seek (int *,int ,int ) ;
 int krb5_storage_set_flags (int *,int ) ;
 unsigned char* malloc (int) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 scalar_t__ nt2unixtime (int) ;
 scalar_t__ time (int *) ;

int
heim_ntlm_verify_ntlm2(const void *key, size_t len,
         const char *username,
         const char *target,
         time_t now,
         const unsigned char serverchallenge[8],
         const struct ntlm_buf *answer,
         struct ntlm_buf *infotarget,
         unsigned char ntlmv2[16])
{
    krb5_error_code ret;
    unsigned char clientanswer[16];
    unsigned char clientnonce[8];
    unsigned char serveranswer[16];
    krb5_storage *sp;
    time_t authtime;
    uint32_t temp;
    uint64_t t;
    int code;

    infotarget->length = 0;
    infotarget->data = ((void*)0);

    if (answer->length < 16)
 return HNTLM_ERR_INVALID_LENGTH;

    if (now == 0)
 now = time(((void*)0));



    heim_ntlm_ntlmv2_key(key, len, username, target, ntlmv2);



    sp = krb5_storage_from_readonly_mem(answer->data, answer->length);
    if (sp == ((void*)0))
 return ENOMEM;
    krb5_storage_set_flags(sp, KRB5_STORAGE_BYTEORDER_LE);

    CHECK(krb5_storage_read(sp, clientanswer, 16), 16);

    CHECK(krb5_ret_uint32(sp, &temp), 0);
    CHECK(temp, 0x00000101);
    CHECK(krb5_ret_uint32(sp, &temp), 0);
    CHECK(temp, 0);

    CHECK(krb5_ret_uint32(sp, &temp), 0);
    t = temp;
    CHECK(krb5_ret_uint32(sp, &temp), 0);
    t |= ((uint64_t)temp)<< 32;

    authtime = nt2unixtime(t);

    if (abs((int)(authtime - now)) > authtimediff) {
 ret = HNTLM_ERR_TIME_SKEW;
 goto out;
    }


    CHECK(krb5_storage_read(sp, clientnonce, 8), 8);

    CHECK(krb5_ret_uint32(sp, &temp), 0);


    infotarget->length = answer->length - krb5_storage_seek(sp, 0, SEEK_CUR);
    infotarget->data = malloc(infotarget->length);
    if (infotarget->data == ((void*)0)) {
 ret = ENOMEM;
 goto out;
    }
    CHECK(krb5_storage_read(sp, infotarget->data, infotarget->length),
   infotarget->length);

    krb5_storage_free(sp);
    sp = ((void*)0);

    if (answer->length < 16) {
 ret = HNTLM_ERR_INVALID_LENGTH;
 goto out;
    }

    ret = heim_ntlm_derive_ntlm2_sess(ntlmv2,
    ((unsigned char *)answer->data) + 16, answer->length - 16,
    serverchallenge,
    serveranswer);
    if (ret)
 goto out;

    if (memcmp(serveranswer, clientanswer, 16) != 0) {
 heim_ntlm_free_buf(infotarget);
 return HNTLM_ERR_AUTH;
    }

    return 0;
out:
    heim_ntlm_free_buf(infotarget);
    if (sp)
 krb5_storage_free(sp);
    return ret;
}
