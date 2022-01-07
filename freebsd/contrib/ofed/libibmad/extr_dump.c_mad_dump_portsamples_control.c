
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_PSC_LAST_F ;
 int IB_PSC_OPCODE_F ;
 int _dump_fields (char*,int,void*,int ,int ) ;

void mad_dump_portsamples_control(char *buf, int bufsz, void *val, int valsz)
{
 _dump_fields(buf, bufsz, val, IB_PSC_OPCODE_F, IB_PSC_LAST_F);
}
