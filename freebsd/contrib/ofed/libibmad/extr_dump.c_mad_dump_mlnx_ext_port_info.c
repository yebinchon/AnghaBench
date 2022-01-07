
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_MLNX_EXT_PORT_LAST_F ;
 int IB_MLNX_EXT_PORT_STATE_CHG_ENABLE_F ;
 int _dump_fields (char*,int,void*,int ,int ) ;

void mad_dump_mlnx_ext_port_info(char *buf, int bufsz, void *val, int valsz)
{
 _dump_fields(buf, bufsz, val, IB_MLNX_EXT_PORT_STATE_CHG_ENABLE_F,
       IB_MLNX_EXT_PORT_LAST_F);
}
