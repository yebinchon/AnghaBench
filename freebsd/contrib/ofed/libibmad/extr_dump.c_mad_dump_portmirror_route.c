
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_PMR_FIRST_F ;
 int IB_PMR_LAST_F ;
 int _dump_fields (char*,int,void*,int ,int ) ;

void mad_dump_portmirror_route(char *buf, int bufsz, void *val, int valsz)
{
 _dump_fields(buf, bufsz, val, IB_PMR_FIRST_F, IB_PMR_LAST_F);
}
