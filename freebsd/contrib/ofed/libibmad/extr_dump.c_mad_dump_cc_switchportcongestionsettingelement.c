
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_CC_SWITCH_PORT_CONGESTION_SETTING_ELEMENT_FIRST_F ;
 int IB_CC_SWITCH_PORT_CONGESTION_SETTING_ELEMENT_LAST_F ;
 int _dump_fields (char*,int,void*,int ,int ) ;

void mad_dump_cc_switchportcongestionsettingelement(char *buf, int bufsz, void *val, int valsz)
{
 _dump_fields(buf, bufsz, val, IB_CC_SWITCH_PORT_CONGESTION_SETTING_ELEMENT_FIRST_F,
       IB_CC_SWITCH_PORT_CONGESTION_SETTING_ELEMENT_LAST_F);
}
