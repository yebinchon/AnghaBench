
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ext_len; int * ext; int validation_status; } ;
typedef TYPE_1__ SCT ;


 int CT_F_SCT_SET1_EXTENSIONS ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (unsigned char const*,size_t) ;
 int SCT_VALIDATION_STATUS_NOT_SET ;

int SCT_set1_extensions(SCT *sct, const unsigned char *ext, size_t ext_len)
{
    OPENSSL_free(sct->ext);
    sct->ext = ((void*)0);
    sct->ext_len = 0;
    sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;

    if (ext != ((void*)0) && ext_len > 0) {
        sct->ext = OPENSSL_memdup(ext, ext_len);
        if (sct->ext == ((void*)0)) {
            CTerr(CT_F_SCT_SET1_EXTENSIONS, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        sct->ext_len = ext_len;
    }
    return 1;
}
