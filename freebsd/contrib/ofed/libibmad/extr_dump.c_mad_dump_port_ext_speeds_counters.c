
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_PESC_LAST_F ;
 int IB_PESC_PORT_SELECT_F ;
 int _dump_fields (char*,int,void*,int ,int ) ;

void mad_dump_port_ext_speeds_counters(char *buf, int bufsz, void *val, int valsz)
{
 _dump_fields(buf, bufsz, val, IB_PESC_PORT_SELECT_F, IB_PESC_LAST_F);
}
