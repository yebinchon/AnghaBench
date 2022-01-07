
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int opts; int keepalive_time; } ;
typedef int FILE ;


 int RS_OPT_SVC_ACTIVE ;
 int RS_SVC_ADD_KEEPALIVE ;
 int RS_SVC_REM_KEEPALIVE ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int*) ;
 int rs_notify_svc (int *,struct rsocket*,int ) ;
 int tcp_svc ;

__attribute__((used)) static int rs_set_keepalive(struct rsocket *rs, int on)
{
 FILE *f;
 int ret;

 if ((on && (rs->opts & RS_OPT_SVC_ACTIVE)) ||
     (!on && !(rs->opts & RS_OPT_SVC_ACTIVE)))
  return 0;

 if (on) {
  if (!rs->keepalive_time) {
   if ((f = fopen("/proc/sys/net/ipv4/tcp_keepalive_time", "r"))) {
    if (fscanf(f, "%u", &rs->keepalive_time) != 1)
     rs->keepalive_time = 7200;
    fclose(f);
   } else {
    rs->keepalive_time = 7200;
   }
  }
  ret = rs_notify_svc(&tcp_svc, rs, RS_SVC_ADD_KEEPALIVE);
 } else {
  ret = rs_notify_svc(&tcp_svc, rs, RS_SVC_REM_KEEPALIVE);
 }

 return ret;
}
