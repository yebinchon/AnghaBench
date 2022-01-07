
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {unsigned char* data; int length; } ;
typedef int res ;


 int ENOMEM ;
 int free (unsigned char*) ;
 int heim_ntlm_calculate_ntlm2_sess_hash (unsigned char const*,unsigned char const*,unsigned char*) ;
 int heim_ntlm_free_buf (struct ntlm_buf*) ;
 void* malloc (int) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int splitandenc (unsigned char*,unsigned char*,unsigned char*) ;

int
heim_ntlm_calculate_ntlm2_sess(const unsigned char clnt_nonce[8],
          const unsigned char svr_chal[8],
          const unsigned char ntlm_hash[16],
          struct ntlm_buf *lm,
          struct ntlm_buf *ntlm)
{
    unsigned char ntlm2_sess_hash[8];
    unsigned char res[21], *resp;
    int code;

    code = heim_ntlm_calculate_ntlm2_sess_hash(clnt_nonce, svr_chal,
            ntlm2_sess_hash);
    if (code) {
 return code;
    }

    lm->data = malloc(24);
    if (lm->data == ((void*)0)) {
 return ENOMEM;
    }
    lm->length = 24;

    ntlm->data = malloc(24);
    if (ntlm->data == ((void*)0)) {
 free(lm->data);
 lm->data = ((void*)0);
 return ENOMEM;
    }
    ntlm->length = 24;


    memset(lm->data, 0, 24);
    memcpy(lm->data, clnt_nonce, 8);

    memset(res, 0, sizeof(res));
    memcpy(res, ntlm_hash, 16);

    resp = ntlm->data;
    code = splitandenc(&res[0], ntlm2_sess_hash, resp + 0);
    if (code)
 goto out;
    code = splitandenc(&res[7], ntlm2_sess_hash, resp + 8);
    if (code)
 goto out;
    code = splitandenc(&res[14], ntlm2_sess_hash, resp + 16);
    if (code)
 goto out;

    return 0;

out:
    heim_ntlm_free_buf(ntlm);
    heim_ntlm_free_buf(lm);
    return code;
}
