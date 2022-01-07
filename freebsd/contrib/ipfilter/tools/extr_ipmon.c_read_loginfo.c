
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int logtype; scalar_t__ size; int fd; scalar_t__ regular; } ;
typedef TYPE_1__ logsource_t ;
typedef int iplog_t ;
typedef int fd_set ;
struct TYPE_7__ {int * log; int * cfile; int * bfile; int * blog; int * file; TYPE_1__* logsrc; scalar_t__ maxfd; int fdmr; } ;
typedef TYPE_2__ config_t ;
typedef int buf ;


 int DEFAULT_IPFLOGSIZE ;
 scalar_t__ EINTR ;
 int FD_ISSET (int ,int *) ;
 int IPMON_SYSLOG ;
 int IPMON_TAIL ;
 int LOG_CRIT ;
 int SEEK_CUR ;
 scalar_t__ donehup ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 void* fopen (int *,char*) ;
 int fprintf (int *,char*) ;
 int init_tabs () ;
 int ipferror (int ,char*) ;
 int ipmonopts ;
 int load_config (int *) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int print_log (TYPE_2__*,TYPE_1__*,char*,int) ;
 int read_log (int ,int*,char*,int) ;
 int select (scalar_t__,int *,int *,int *,int *) ;
 int sleep (int) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int read_loginfo(config_t *conf)
{
 iplog_t buf[DEFAULT_IPFLOGSIZE/sizeof(iplog_t)+1];
 int n, tr, nr, i;
 logsource_t *l;
 fd_set fdr;

 fdr = conf->fdmr;

 n = select(conf->maxfd + 1, &fdr, ((void*)0), ((void*)0), ((void*)0));
 if (n == 0)
  return 1;
 if (n == -1) {
  if (errno == EINTR)
   return 1;
  return -1;
 }

 for (i = 0, nr = 0; i < 3; i++) {
  l = &conf->logsrc[i];

  if ((l->logtype == -1) || !FD_ISSET(l->fd, &fdr))
   continue;

  tr = 0;
  if (l->regular) {
   tr = (lseek(l->fd, 0, SEEK_CUR) < l->size);
   if (!tr && !(ipmonopts & IPMON_TAIL))
    return 0;
  }

  n = 0;
  tr = read_log(l->fd, &n, (char *)buf, sizeof(buf));
  if (donehup) {
   if (conf->file != ((void*)0)) {
    if (conf->log != ((void*)0)) {
     fclose(conf->log);
     conf->log = ((void*)0);
    }
    conf->log = fopen(conf->file, "a");
   }

   if (conf->bfile != ((void*)0)) {
    if (conf->blog != ((void*)0)) {
     fclose(conf->blog);
     conf->blog = ((void*)0);
    }
    conf->blog = fopen(conf->bfile, "a");
   }

   init_tabs();
   if (conf->cfile != ((void*)0))
    load_config(conf->cfile);
   donehup = 0;
  }

  switch (tr)
  {
  case -1 :
   if (ipmonopts & IPMON_SYSLOG)
    syslog(LOG_CRIT, "read: %m\n");
   else {
    ipferror(l->fd, "read");
   }
   return 0;
  case 1 :
   if (ipmonopts & IPMON_SYSLOG)
    syslog(LOG_CRIT, "aborting logging\n");
   else if (conf->log != ((void*)0))
    fprintf(conf->log, "aborting logging\n");
   return 0;
  case 2 :
   break;
  case 0 :
   nr += tr;
   if (n > 0) {
    print_log(conf, l, (char *)buf, n);
    if (!(ipmonopts & IPMON_SYSLOG))
     fflush(conf->log);
   }
   break;
  }
 }

 if (!nr && (ipmonopts & IPMON_TAIL))
  sleep(1);

 return 1;
}
