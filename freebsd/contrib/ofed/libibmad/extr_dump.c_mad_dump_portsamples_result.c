
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_PSR_LAST_F ;
 int IB_PSR_TAG_F ;
 int _dump_fields (char*,int,void*,int ,int ) ;

void mad_dump_portsamples_result(char *buf, int bufsz, void *val, int valsz)
{
 _dump_fields(buf, bufsz, val, IB_PSR_TAG_F, IB_PSR_LAST_F);
}
