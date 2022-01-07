
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct stats_list_entry {int read_msgs; int read_bytes; int write_msgs; int write_bytes; int recv_msgs; int recv_bytes; int send_msgs; int send_bytes; int name; struct stats_list_entry* stats; } ;
struct stats_list {int dummy; } ;
struct krping_stats {int read_msgs; int read_bytes; int write_msgs; int write_bytes; int recv_msgs; int recv_bytes; int send_msgs; int send_bytes; int name; struct krping_stats* stats; } ;
struct cdev {int dummy; } ;


 int M_DEVBUF ;
 scalar_t__ STAILQ_EMPTY (struct stats_list*) ;
 struct stats_list_entry* STAILQ_FIRST (struct stats_list*) ;
 int STAILQ_INIT (struct stats_list*) ;
 int STAILQ_REMOVE_HEAD (struct stats_list*,int ) ;
 int free (struct stats_list_entry*,int ) ;
 int krping_copy_stats ;
 int krping_walk_cb_list (int ,struct stats_list*) ;
 int link ;
 int uprintf (char*,...) ;

__attribute__((used)) static int
krping_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 int num = 1;
 struct stats_list list;
 struct stats_list_entry *e;

 STAILQ_INIT(&list);
 krping_walk_cb_list(krping_copy_stats, &list);

 if (STAILQ_EMPTY(&list))
  return (0);

 uprintf("krping: %4s %10s %10s %10s %10s %10s %10s %10s %10s %10s\n",
     "num", "device", "snd bytes", "snd msgs", "rcv bytes", "rcv msgs",
     "wr bytes", "wr msgs", "rd bytes", "rd msgs");

 while (!STAILQ_EMPTY(&list)) {
  e = STAILQ_FIRST(&list);
  STAILQ_REMOVE_HEAD(&list, link);
  if (e->stats == ((void*)0))
   uprintf("krping: %d listen\n", num);
  else {
   struct krping_stats *stats = e->stats;

   uprintf("krping: %4d %10s %10llu %10llu %10llu %10llu "
       "%10llu %10llu %10llu %10llu\n", num, stats->name,
       stats->send_bytes, stats->send_msgs,
       stats->recv_bytes, stats->recv_msgs,
       stats->write_bytes, stats->write_msgs,
       stats->read_bytes, stats->read_msgs);
   free(stats, M_DEVBUF);
  }
  num++;
  free(e, M_DEVBUF);
 }

 return (0);
}
