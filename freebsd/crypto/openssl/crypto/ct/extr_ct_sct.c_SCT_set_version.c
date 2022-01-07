
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sct_version_t ;
struct TYPE_3__ {int validation_status; scalar_t__ version; } ;
typedef TYPE_1__ SCT ;


 int CT_F_SCT_SET_VERSION ;
 int CT_R_UNSUPPORTED_VERSION ;
 int CTerr (int ,int ) ;
 int SCT_VALIDATION_STATUS_NOT_SET ;
 scalar_t__ SCT_VERSION_V1 ;

int SCT_set_version(SCT *sct, sct_version_t version)
{
    if (version != SCT_VERSION_V1) {
        CTerr(CT_F_SCT_SET_VERSION, CT_R_UNSUPPORTED_VERSION);
        return 0;
    }
    sct->version = version;
    sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;
    return 1;
}
