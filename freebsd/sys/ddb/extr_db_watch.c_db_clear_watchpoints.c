
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_watchpoints_inserted ;

void
db_clear_watchpoints(void)
{
 db_watchpoints_inserted = 0;
}
