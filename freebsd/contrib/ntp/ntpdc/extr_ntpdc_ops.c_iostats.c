
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct parse {int dummy; } ;
struct info_io_stats {int int_received; int interrupts; int notsent; int sent; int received; int ignored; int dropped; int lowwater; int fullrecvbufs; int freerecvbufs; int totalrecvbufs; int timereset; } ;
typedef int FILE ;


 scalar_t__ IMPL_XNTPD ;
 scalar_t__ IMPL_XNTPD_OLD ;
 int INFO_ERR_IMPL ;
 int REQ_IO_STATS ;
 int check1item (size_t,int *) ;
 int checkitemsize (size_t,int) ;
 int doquery (scalar_t__,int ,int ,int ,int ,int *,size_t*,size_t*,void*,int ,int) ;
 int fprintf (int *,char*,int) ;
 scalar_t__ impl_ver ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void
iostats(
 struct parse *pcmd,
 FILE *fp
 )
{
 struct info_io_stats *io;
 size_t items;
 size_t itemsize;
 int res;

again:
 res = doquery(impl_ver, REQ_IO_STATS, 0, 0, 0, ((void*)0), &items,
        &itemsize, (void *)&io, 0, sizeof(*io));

 if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
  impl_ver = IMPL_XNTPD_OLD;
  goto again;
 }

 if (res != 0)
  return;

 if (!check1item(items, fp))
  return;

 if (!checkitemsize(itemsize, sizeof(*io)))
  return;

 fprintf(fp, "time since reset:     %lu\n",
  (u_long)ntohl(io->timereset));
 fprintf(fp, "receive buffers:      %u\n",
  (u_int)ntohs(io->totalrecvbufs));
 fprintf(fp, "free receive buffers: %u\n",
  (u_int)ntohs(io->freerecvbufs));
 fprintf(fp, "used receive buffers: %u\n",
  (u_int)ntohs(io->fullrecvbufs));
 fprintf(fp, "low water refills:    %u\n",
  (u_int)ntohs(io->lowwater));
 fprintf(fp, "dropped packets:      %lu\n",
  (u_long)ntohl(io->dropped));
 fprintf(fp, "ignored packets:      %lu\n",
  (u_long)ntohl(io->ignored));
 fprintf(fp, "received packets:     %lu\n",
  (u_long)ntohl(io->received));
 fprintf(fp, "packets sent:         %lu\n",
  (u_long)ntohl(io->sent));
 fprintf(fp, "packets not sent:     %lu\n",
  (u_long)ntohl(io->notsent));
 fprintf(fp, "interrupts handled:   %lu\n",
  (u_long)ntohl(io->interrupts));
 fprintf(fp, "received by int:      %lu\n",
  (u_long)ntohl(io->int_received));
}
