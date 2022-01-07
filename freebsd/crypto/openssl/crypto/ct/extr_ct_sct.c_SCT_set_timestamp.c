
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int validation_status; int timestamp; } ;
typedef TYPE_1__ SCT ;


 int SCT_VALIDATION_STATUS_NOT_SET ;

void SCT_set_timestamp(SCT *sct, uint64_t timestamp)
{
    sct->timestamp = timestamp;
    sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;
}
