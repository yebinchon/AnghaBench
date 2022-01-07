
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ CMS_RecipientInfo ;



int CMS_RecipientInfo_type(CMS_RecipientInfo *ri)
{
    return ri->type;
}
