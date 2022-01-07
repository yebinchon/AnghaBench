
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_CPI_BASEVER_F ;
 scalar_t__ IB_CPI_TRAP_QKEY_F ;
 int _dump_fields (char*,int,void*,int ,scalar_t__) ;

void mad_dump_classportinfo(char *buf, int bufsz, void *val, int valsz)
{

 _dump_fields(buf, bufsz, val, IB_CPI_BASEVER_F, IB_CPI_TRAP_QKEY_F + 1);
}
