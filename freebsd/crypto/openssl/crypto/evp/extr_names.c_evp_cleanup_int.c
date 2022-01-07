
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_PBE_cleanup () ;
 int OBJ_NAME_TYPE_CIPHER_METH ;
 int OBJ_NAME_TYPE_MD_METH ;
 int OBJ_NAME_cleanup (int) ;
 int OBJ_sigid_free () ;
 int evp_app_cleanup_int () ;

void evp_cleanup_int(void)
{
    OBJ_NAME_cleanup(OBJ_NAME_TYPE_CIPHER_METH);
    OBJ_NAME_cleanup(OBJ_NAME_TYPE_MD_METH);





    OBJ_NAME_cleanup(-1);

    EVP_PBE_cleanup();
    OBJ_sigid_free();

    evp_app_cleanup_int();
}
