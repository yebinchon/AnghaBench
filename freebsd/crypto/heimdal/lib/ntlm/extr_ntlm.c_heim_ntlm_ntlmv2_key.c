
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {int data; int length; } ;
typedef int HMAC_CTX ;


 int ENOMEM ;
 int EVP_md5 () ;
 int HMAC_CTX_free (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_Final (int *,unsigned char*,unsigned int*) ;
 int HMAC_Init_ex (int *,void const*,size_t,int ,int *) ;
 int HMAC_Update (int *,int ,int ) ;
 int ascii2ucs2le (char const*,int,struct ntlm_buf*) ;
 int free (int ) ;

int
heim_ntlm_ntlmv2_key(const void *key, size_t len,
       const char *username,
       const char *target,
       unsigned char ntlmv2[16])
{
    int ret;
    unsigned int hmaclen;
    HMAC_CTX *c;

    c = HMAC_CTX_new();
    if (c == ((void*)0))
 return ENOMEM;
    HMAC_Init_ex(c, key, len, EVP_md5(), ((void*)0));
    {
 struct ntlm_buf buf;

 ret = ascii2ucs2le(username, 1, &buf);
 if (ret)
     goto out;
 HMAC_Update(c, buf.data, buf.length);
 free(buf.data);

 ret = ascii2ucs2le(target, 1, &buf);
 if (ret)
     goto out;
 HMAC_Update(c, buf.data, buf.length);
 free(buf.data);
    }
    HMAC_Final(c, ntlmv2, &hmaclen);
 out:
    HMAC_CTX_free(c);

    return ret;
}
