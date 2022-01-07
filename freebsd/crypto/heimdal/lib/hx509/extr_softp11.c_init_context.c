
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CK_RV ;


 int CKR_GENERAL_ERROR ;
 int CKR_OK ;
 int * context ;
 int hx509_context_init (int **) ;

__attribute__((used)) static CK_RV
init_context(void)
{
    if (context == ((void*)0)) {
 int ret = hx509_context_init(&context);
 if (ret)
     return CKR_GENERAL_ERROR;
    }
    return CKR_OK;
}
