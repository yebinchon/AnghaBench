
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_PORT_CAPMASK2_F ;
 int IB_PORT_FIRST_F ;
 int IB_PORT_LAST_F ;
 int IB_PORT_LINK_SPEED_EXT_LAST_F ;
 int _dump_fields (char*,int,void*,int ,int ) ;

void mad_dump_portinfo(char *buf, int bufsz, void *val, int valsz)
{
 int cnt;

 cnt = _dump_fields(buf, bufsz, val, IB_PORT_FIRST_F, IB_PORT_LAST_F);
 if (cnt < 0)
  return;

 _dump_fields(buf + cnt, bufsz - cnt, val,
       IB_PORT_CAPMASK2_F, IB_PORT_LINK_SPEED_EXT_LAST_F);
}
