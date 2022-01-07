
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ db_maxlines ;

void
db_disable_pager(void)
{
 db_maxlines = 0;
}
