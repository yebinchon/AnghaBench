
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CK_RV ;


 int CKR_FUNCTION_NOT_SUPPORTED ;
 int st_logf (char*) ;

__attribute__((used)) static CK_RV
func_not_supported(void)
{
    st_logf("function not supported\n");
    return CKR_FUNCTION_NOT_SUPPORTED;
}
