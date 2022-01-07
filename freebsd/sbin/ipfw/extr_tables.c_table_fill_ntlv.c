
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int length; int type; } ;
struct TYPE_5__ {int name; int set; int idx; TYPE_1__ head; } ;
typedef TYPE_2__ ipfw_obj_ntlv ;


 int IPFW_TLV_TBL_NAME ;
 int strlcpy (int ,char const*,int) ;

void
table_fill_ntlv(ipfw_obj_ntlv *ntlv, const char *name, uint8_t set,
    uint16_t uidx)
{

 ntlv->head.type = IPFW_TLV_TBL_NAME;
 ntlv->head.length = sizeof(ipfw_obj_ntlv);
 ntlv->idx = uidx;
 ntlv->set = set;
 strlcpy(ntlv->name, name, sizeof(ntlv->name));
}
