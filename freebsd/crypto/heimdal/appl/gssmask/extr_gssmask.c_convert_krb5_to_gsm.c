
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int int32_t ;


 int GSMERR_ERROR ;
 int GSMERR_OK ;

__attribute__((used)) static int32_t
convert_krb5_to_gsm(krb5_error_code ret)
{
    switch(ret) {
    case 0:
 return GSMERR_OK;
    default:
 return GSMERR_ERROR;
    }
}
