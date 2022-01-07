
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XUIOSTAT_BUMP (int ) ;
 int xuiostat_wbuf_nocopy ;

void
xuio_stat_wbuf_nocopy(void)
{
 XUIOSTAT_BUMP(xuiostat_wbuf_nocopy);
}
