
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbuf_stats_hash_table_destroy () ;

void
dbuf_stats_destroy(void)
{
 dbuf_stats_hash_table_destroy();
}
