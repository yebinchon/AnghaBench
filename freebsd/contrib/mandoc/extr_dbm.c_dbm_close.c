
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbm_unmap () ;

void
dbm_close(void)
{
 dbm_unmap();
}
