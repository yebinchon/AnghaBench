
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INCDATASIZE ;
 int erealloc_zero (int ,size_t,size_t) ;
 int pktdata ;
 scalar_t__ pktdatasize ;

__attribute__((used)) static void
growpktdata(void)
{
 size_t priorsz;

 priorsz = (size_t)pktdatasize;
 pktdatasize += INCDATASIZE;
 pktdata = erealloc_zero(pktdata, (size_t)pktdatasize, priorsz);
}
