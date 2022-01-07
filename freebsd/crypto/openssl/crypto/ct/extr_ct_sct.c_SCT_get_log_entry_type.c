
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ct_log_entry_type_t ;
struct TYPE_3__ {int entry_type; } ;
typedef TYPE_1__ SCT ;



ct_log_entry_type_t SCT_get_log_entry_type(const SCT *sct)
{
    return sct->entry_type;
}
