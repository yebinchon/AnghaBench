
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_server_stats {int extended; } ;
struct config_file {int stat_extended; } ;


 int memset (struct ub_server_stats*,int ,int) ;

void server_stats_init(struct ub_server_stats* stats, struct config_file* cfg)
{
 memset(stats, 0, sizeof(*stats));
 stats->extended = cfg->stat_extended;
}
