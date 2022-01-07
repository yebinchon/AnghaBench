
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_PC_EXT_PORT_SELECT_F ;
 int IB_PC_EXT_XMT_BYTES_F ;
 int IB_PC_XMT_DISC_LAST_F ;
 int IB_PC_XMT_INACT_DISC_F ;
 int _dump_fields (char*,int,void*,int ,int ) ;

void mad_dump_perfcounters_xmt_disc(char *buf, int bufsz, void *val, int valsz)
{
 int cnt;

 cnt = _dump_fields(buf, bufsz, val, IB_PC_EXT_PORT_SELECT_F,
      IB_PC_EXT_XMT_BYTES_F);
 if (cnt < 0)
  return;

 _dump_fields(buf + cnt, bufsz - cnt, val, IB_PC_XMT_INACT_DISC_F,
       IB_PC_XMT_DISC_LAST_F);
}
