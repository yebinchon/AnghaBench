
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int maxfd; TYPE_1__* logsrc; int log; } ;
typedef TYPE_2__ config_t ;
struct TYPE_5__ {int fd; int logtype; int regular; int file; } ;


 int IPL_NAME ;
 int IPNAT_NAME ;
 int IPSTATE_NAME ;
 int add_doing (int *) ;
 int executesaver ;
 int filesaver ;
 int memset (TYPE_2__*,int ,int) ;
 int nothingsaver ;
 int snmpv1saver ;
 int snmpv2saver ;
 int stdout ;
 int syslogsaver ;

__attribute__((used)) static void initconfig(config_t *conf)
{
 int i;

 memset(conf, 0, sizeof(*conf));

 conf->log = stdout;
 conf->maxfd = -1;

 for (i = 0; i < 3; i++) {
  conf->logsrc[i].fd = -1;
  conf->logsrc[i].logtype = -1;
  conf->logsrc[i].regular = -1;
 }

 conf->logsrc[0].file = IPL_NAME;
 conf->logsrc[1].file = IPNAT_NAME;
 conf->logsrc[2].file = IPSTATE_NAME;

 add_doing(&executesaver);
 add_doing(&snmpv1saver);
 add_doing(&snmpv2saver);
 add_doing(&syslogsaver);
 add_doing(&filesaver);
 add_doing(&nothingsaver);
}
