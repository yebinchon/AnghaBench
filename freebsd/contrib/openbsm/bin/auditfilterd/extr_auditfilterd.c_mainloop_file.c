
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct timespec {int dummy; } ;
typedef int FILE ;


 int CLOCK_REALTIME ;
 int au_read_rec (int *,int **) ;
 int auditfilterd_conf (char const*,int *) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int err (int,char*,...) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (int *) ;
 int present_rawrecord (struct timespec*,int *,int) ;
 int present_tokens (struct timespec*,int *,int) ;
 scalar_t__ quit ;
 scalar_t__ reread_config ;
 int warnx (char*) ;

__attribute__((used)) static void
mainloop_file(const char *conffile, const char *trailfile, FILE *trail_fp)
{
 struct timespec ts;
 FILE *conf_fp;
 u_char *buf;
 int reclen;

 while (1) {




  if (reread_config) {
   reread_config = 0;
   warnx("rereading configuration");
   conf_fp = fopen(conffile, "r");
   if (conf_fp == ((void*)0))
    err(-1, "%s", conffile);
   auditfilterd_conf(conffile, conf_fp);
   fclose(conf_fp);

   fclose(trail_fp);
   trail_fp = fopen(trailfile, "r");
   if (trail_fp == ((void*)0))
    err(-1, "%s", trailfile);
  }
  if (quit) {
   warnx("quitting");
   break;
  }






  reclen = au_read_rec(trail_fp, &buf);
  if (reclen == -1)
   continue;
  if (clock_gettime(CLOCK_REALTIME, &ts) < 0)
   err(-1, "clock_gettime");
  present_rawrecord(&ts, buf, reclen);
  present_tokens(&ts, buf, reclen);
  free(buf);
 }
}
