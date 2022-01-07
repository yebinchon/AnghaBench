
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct parse {int dummy; } ;
struct old_info_sys_stats {int dummy; } ;
struct info_sys_stats {int limitrejected; int badauth; int badlength; int denied; int unknownversion; int oldversionpkt; int newversionpkt; int processed; int received; int timereset; int timeup; } ;
typedef int FILE ;


 scalar_t__ IMPL_XNTPD ;
 scalar_t__ IMPL_XNTPD_OLD ;
 int INFO_ERR_IMPL ;
 int REQ_SYS_STATS ;
 int check1item (size_t,int *) ;
 int checkitemsize (size_t,int) ;
 int doquery (scalar_t__,int ,int ,int ,int ,char*,size_t*,size_t*,void*,int ,int) ;
 int fprintf (int *,char*,int ) ;
 scalar_t__ impl_ver ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static void
sysstats(
 struct parse *pcmd,
 FILE *fp
 )
{
 struct info_sys_stats *ss;
 size_t items;
 size_t itemsize;
 int res;

again:
 res = doquery(impl_ver, REQ_SYS_STATS, 0, 0, 0, (char *)((void*)0),
        &items, &itemsize, (void *)&ss, 0,
        sizeof(struct info_sys_stats));

 if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
  impl_ver = IMPL_XNTPD_OLD;
  goto again;
 }

 if (res != 0)
     return;

 if (!check1item(items, fp))
     return;

 if (itemsize != sizeof(struct info_sys_stats) &&
     itemsize != sizeof(struct old_info_sys_stats)) {

  checkitemsize(itemsize, sizeof(struct info_sys_stats));
  return;
 }
 fprintf(fp, "time since restart:     %lu\n",
  (u_long)ntohl(ss->timeup));
 fprintf(fp, "time since reset:       %lu\n",
  (u_long)ntohl(ss->timereset));
 fprintf(fp, "packets received:       %lu\n",
  (u_long)ntohl(ss->received));
 fprintf(fp, "packets processed:      %lu\n",
  (u_long)ntohl(ss->processed));
 fprintf(fp, "current version:        %lu\n",
  (u_long)ntohl(ss->newversionpkt));
 fprintf(fp, "previous version:       %lu\n",
  (u_long)ntohl(ss->oldversionpkt));
 fprintf(fp, "declined:               %lu\n",
  (u_long)ntohl(ss->unknownversion));
 fprintf(fp, "access denied:          %lu\n",
  (u_long)ntohl(ss->denied));
 fprintf(fp, "bad length or format:   %lu\n",
  (u_long)ntohl(ss->badlength));
 fprintf(fp, "bad authentication:     %lu\n",
  (u_long)ntohl(ss->badauth));
 if (itemsize != sizeof(struct info_sys_stats))
     return;

 fprintf(fp, "rate exceeded:          %lu\n",
        (u_long)ntohl(ss->limitrejected));
}
