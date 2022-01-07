
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct config_file* cfg; } ;
struct worker {TYPE_1__ env; } ;
struct config_file {int chrootdir; int use_syslog; int logfile; } ;
typedef int RES ;


 int log_init (int ,int ,int ) ;
 int send_ok (int *) ;

__attribute__((used)) static void
do_log_reopen(RES* ssl, struct worker* worker)
{
 struct config_file* cfg = worker->env.cfg;
 send_ok(ssl);
 log_init(cfg->logfile, cfg->use_syslog, cfg->chrootdir);
}
