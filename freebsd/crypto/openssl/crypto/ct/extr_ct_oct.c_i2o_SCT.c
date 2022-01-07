
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ext_len; int sig_len; size_t sct_len; int sct; int ext; int timestamp; int log_id; int version; } ;
typedef TYPE_1__ SCT ;


 int CT_F_I2O_SCT ;
 int CT_R_SCT_NOT_SET ;
 size_t CT_V1_HASHLEN ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int SCT_VERSION_V1 ;
 int SCT_is_complete (TYPE_1__ const*) ;
 scalar_t__ i2o_SCT_signature (TYPE_1__ const*,unsigned char**) ;
 int l2n8 (int ,unsigned char*) ;
 int memcpy (unsigned char*,int ,size_t) ;
 int s2n (int,unsigned char*) ;

int i2o_SCT(const SCT *sct, unsigned char **out)
{
    size_t len;
    unsigned char *p = ((void*)0), *pstart = ((void*)0);

    if (!SCT_is_complete(sct)) {
        CTerr(CT_F_I2O_SCT, CT_R_SCT_NOT_SET);
        goto err;
    }






    if (sct->version == SCT_VERSION_V1)
        len = 43 + sct->ext_len + 4 + sct->sig_len;
    else
        len = sct->sct_len;

    if (out == ((void*)0))
        return len;

    if (*out != ((void*)0)) {
        p = *out;
        *out += len;
    } else {
        pstart = p = OPENSSL_malloc(len);
        if (p == ((void*)0)) {
            CTerr(CT_F_I2O_SCT, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        *out = p;
    }

    if (sct->version == SCT_VERSION_V1) {
        *p++ = sct->version;
        memcpy(p, sct->log_id, CT_V1_HASHLEN);
        p += CT_V1_HASHLEN;
        l2n8(sct->timestamp, p);
        s2n(sct->ext_len, p);
        if (sct->ext_len > 0) {
            memcpy(p, sct->ext, sct->ext_len);
            p += sct->ext_len;
        }
        if (i2o_SCT_signature(sct, &p) <= 0)
            goto err;
    } else {
        memcpy(p, sct->sct, len);
    }

    return len;
err:
    OPENSSL_free(pstart);
    return -1;
}
