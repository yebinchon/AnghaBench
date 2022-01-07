
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sct_source_t ;
struct TYPE_4__ {int source; int validation_status; } ;
typedef TYPE_1__ SCT ;


 int CT_LOG_ENTRY_TYPE_PRECERT ;
 int CT_LOG_ENTRY_TYPE_X509 ;




 int SCT_VALIDATION_STATUS_NOT_SET ;
 int SCT_set_log_entry_type (TYPE_1__*,int ) ;

int SCT_set_source(SCT *sct, sct_source_t source)
{
    sct->source = source;
    sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;
    switch (source) {
    case 130:
    case 131:
        return SCT_set_log_entry_type(sct, CT_LOG_ENTRY_TYPE_X509);
    case 128:
        return SCT_set_log_entry_type(sct, CT_LOG_ENTRY_TYPE_PRECERT);
    case 129:
        break;
    }

    return 1;
}
