
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_PORT_LINK_DOWN_DEF_F ;
 int IB_PORT_STATE_F ;
 int _dump_fields (char*,int,void*,int ,int ) ;

void mad_dump_portstates(char *buf, int bufsz, void *val, int valsz)
{
 _dump_fields(buf, bufsz, val, IB_PORT_STATE_F, IB_PORT_LINK_DOWN_DEF_F);
}
