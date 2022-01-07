
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ntlm_buf {int length; int * data; } ;
typedef int clientchallenge ;


 int ENOMEM ;
 int HNTLM_ERR_RAND ;
 int RAND_bytes (unsigned char*,int) ;
 int heim_ntlm_derive_ntlm2_sess (unsigned char*,unsigned char*,int,unsigned char const*,int *) ;
 int heim_ntlm_ntlmv2_key (void const*,size_t,char const*,char const*,unsigned char*) ;
 int * malloc (int) ;
 int memcpy (int *,unsigned char*,int) ;

int
heim_ntlm_calculate_lm2(const void *key, size_t len,
   const char *username,
   const char *target,
   const unsigned char serverchallenge[8],
   unsigned char ntlmv2[16],
   struct ntlm_buf *answer)
{
    unsigned char clientchallenge[8];
    int ret;

    if (RAND_bytes(clientchallenge, sizeof(clientchallenge)) != 1)
 return HNTLM_ERR_RAND;



    heim_ntlm_ntlmv2_key(key, len, username, target, ntlmv2);

    answer->data = malloc(24);
    if (answer->data == ((void*)0))
        return ENOMEM;
    answer->length = 24;

    ret = heim_ntlm_derive_ntlm2_sess(ntlmv2, clientchallenge, 8,
    serverchallenge, answer->data);
    if (ret)
 return ret;

    memcpy(((uint8_t *)answer->data) + 16, clientchallenge, 8);

    return 0;
}
