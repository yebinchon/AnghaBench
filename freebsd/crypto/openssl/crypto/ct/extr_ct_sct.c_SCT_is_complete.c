
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int version; int * sct; int * log_id; } ;
typedef TYPE_1__ SCT ;




 int SCT_signature_is_complete (TYPE_1__ const*) ;

int SCT_is_complete(const SCT *sct)
{
    switch (sct->version) {
    case 129:
        return 0;
    case 128:
        return sct->log_id != ((void*)0) && SCT_signature_is_complete(sct);
    default:
        return sct->sct != ((void*)0);
    }
}
