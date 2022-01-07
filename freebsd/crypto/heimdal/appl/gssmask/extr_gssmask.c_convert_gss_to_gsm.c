
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int OM_uint32 ;


 int GSMERR_AP_MODIFIED ;
 int GSMERR_CONTINUE_NEEDED ;
 int GSMERR_ERROR ;
 int GSMERR_INVALID_TOKEN ;
 int GSMERR_OK ;




__attribute__((used)) static int32_t
convert_gss_to_gsm(OM_uint32 maj_stat)
{
    switch(maj_stat) {
    case 0:
 return GSMERR_OK;
    case 129:
 return GSMERR_CONTINUE_NEEDED;
    case 128:
        return GSMERR_INVALID_TOKEN;
    case 130:
 return GSMERR_AP_MODIFIED;
    default:
 return GSMERR_ERROR;
    }
}
