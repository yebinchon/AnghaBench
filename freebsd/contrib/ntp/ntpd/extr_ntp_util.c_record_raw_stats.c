
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int32 ;
typedef int u_char ;
typedef int sockaddr_u ;
struct TYPE_10__ {int l_ui; } ;
typedef TYPE_1__ l_fp ;
struct TYPE_11__ {int * fp; } ;


 scalar_t__ MJD_1900 ;
 int fflush (int *) ;
 int filegen_setup (TYPE_7__*,int) ;
 int fprintf (int *,char*,...) ;
 int get_systime (TYPE_1__*) ;
 TYPE_7__ rawstats ;
 int refid_str (int ,int) ;
 int stats_control ;
 char* stoa (int *) ;
 int ulfptoa (TYPE_1__*,int) ;

void
record_raw_stats(
 sockaddr_u *srcadr,
 sockaddr_u *dstadr,
 l_fp *t1,
 l_fp *t2,
 l_fp *t3,
 l_fp *t4,
 int leap,
 int version,
 int mode,
 int stratum,
 int ppoll,
 int precision,
 double root_delay,
 double root_dispersion,
 u_int32 refid,
 int len,
 u_char *extra
 )
{
 l_fp now;
 u_long day;

 if (!stats_control)
  return;

 get_systime(&now);
 filegen_setup(&rawstats, now.l_ui);
 day = now.l_ui / 86400 + MJD_1900;
 now.l_ui %= 86400;
 if (rawstats.fp != ((void*)0)) {
  fprintf(rawstats.fp, "%lu %s %s %s %s %s %s %s %d %d %d %d %d %d %.6f %.6f %s",
      day, ulfptoa(&now, 3),
      srcadr ? stoa(srcadr) : "-",
      dstadr ? stoa(dstadr) : "-",
      ulfptoa(t1, 9), ulfptoa(t2, 9),
      ulfptoa(t3, 9), ulfptoa(t4, 9),
      leap, version, mode, stratum, ppoll, precision,
      root_delay, root_dispersion, refid_str(refid, stratum));
  if (len > 0) {
   int i;

   fprintf(rawstats.fp, " %d: ", len);
   for (i = 0; i < len; ++i) {
    fprintf(rawstats.fp, "%02x", extra[i]);
   }
  }
  fprintf(rawstats.fp, "\n");
  fflush(rawstats.fp);
 }
}
