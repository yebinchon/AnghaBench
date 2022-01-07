
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;




 int CMS_RECIPINFO_AGREE ;
 int dh_cms_decrypt (void*) ;
 int dh_cms_encrypt (void*) ;

__attribute__((used)) static int dh_pkey_ctrl(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    switch (op) {


    case 129:
        if (arg1 == 1)
            return dh_cms_decrypt(arg2);
        else if (arg1 == 0)
            return dh_cms_encrypt(arg2);
        return -2;

    case 128:
        *(int *)arg2 = CMS_RECIPINFO_AGREE;
        return 1;

    default:
        return -2;
    }

}
