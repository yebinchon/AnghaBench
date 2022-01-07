
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ipfw_obj_ctlv ;


 int IPFW_TLV_TBL_NAME ;
 char* object_search_ctlv (int *,int ,int ) ;

__attribute__((used)) static char *
table_search_ctlv(ipfw_obj_ctlv *ctlv, uint16_t idx)
{

 return (object_search_ctlv(ctlv, idx, IPFW_TLV_TBL_NAME));
}
