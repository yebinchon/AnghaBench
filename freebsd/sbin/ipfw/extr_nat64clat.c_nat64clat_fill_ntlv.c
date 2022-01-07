
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int length; int type; } ;
struct TYPE_5__ {int idx; int name; int set; TYPE_1__ head; } ;
typedef TYPE_2__ ipfw_obj_ntlv ;


 int IPFW_TLV_EACTION_NAME (int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
nat64clat_fill_ntlv(ipfw_obj_ntlv *ntlv, const char *name, uint8_t set)
{

 ntlv->head.type = IPFW_TLV_EACTION_NAME(1);
 ntlv->head.length = sizeof(ipfw_obj_ntlv);
 ntlv->idx = 1;
 ntlv->set = set;
 strlcpy(ntlv->name, name, sizeof(ntlv->name));
}
