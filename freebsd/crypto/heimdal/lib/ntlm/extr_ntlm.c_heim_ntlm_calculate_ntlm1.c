
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {int length; int * data; } ;
typedef int res ;


 int ENOMEM ;
 int HNTLM_ERR_INVALID_LENGTH ;
 size_t MD4_DIGEST_LENGTH ;
 int heim_ntlm_free_buf (struct ntlm_buf*) ;
 int * malloc (int) ;
 int memcpy (unsigned char*,void*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 int splitandenc (unsigned char*,unsigned char*,unsigned char*) ;

int
heim_ntlm_calculate_ntlm1(void *key, size_t len,
     unsigned char challenge[8],
     struct ntlm_buf *answer)
{
    unsigned char res[21];
    int ret;

    if (len != MD4_DIGEST_LENGTH)
 return HNTLM_ERR_INVALID_LENGTH;

    memcpy(res, key, len);
    memset(&res[MD4_DIGEST_LENGTH], 0, sizeof(res) - MD4_DIGEST_LENGTH);

    answer->data = malloc(24);
    if (answer->data == ((void*)0))
 return ENOMEM;
    answer->length = 24;

    ret = splitandenc(&res[0], challenge, ((unsigned char *)answer->data) + 0);
    if (ret)
 goto out;
    ret = splitandenc(&res[7], challenge, ((unsigned char *)answer->data) + 8);
    if (ret)
 goto out;
    ret = splitandenc(&res[14], challenge, ((unsigned char *)answer->data) + 16);
    if (ret)
 goto out;

    return 0;

out:
    heim_ntlm_free_buf(answer);
    return ret;
}
