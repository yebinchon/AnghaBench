
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ct_log_entry_type_t ;
struct TYPE_3__ {int entry_type; int validation_status; } ;
typedef TYPE_1__ SCT ;


 int CT_F_SCT_SET_LOG_ENTRY_TYPE ;



 int CT_R_UNSUPPORTED_ENTRY_TYPE ;
 int CTerr (int ,int ) ;
 int SCT_VALIDATION_STATUS_NOT_SET ;

int SCT_set_log_entry_type(SCT *sct, ct_log_entry_type_t entry_type)
{
    sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;

    switch (entry_type) {
    case 128:
    case 129:
        sct->entry_type = entry_type;
        return 1;
    case 130:
        break;
    }
    CTerr(CT_F_SCT_SET_LOG_ENTRY_TYPE, CT_R_UNSUPPORTED_ENTRY_TYPE);
    return 0;
}
