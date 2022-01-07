
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_list_entry {struct krping_stats* stats; } ;
struct stats_list {int dummy; } ;
struct krping_stats {int dummy; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int STAILQ_INSERT_TAIL (struct stats_list*,struct stats_list_entry*,int ) ;
 int free (struct stats_list_entry*,int ) ;
 int link ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static void
krping_copy_stats(struct krping_stats *stats, void *arg)
{
 struct stats_list_entry *s;
 struct stats_list *list = arg;

 s = malloc(sizeof(*s), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (s == ((void*)0))
  return;
 if (stats != ((void*)0)) {
  s->stats = malloc(sizeof(*stats), M_DEVBUF, M_NOWAIT | M_ZERO);
  if (s->stats == ((void*)0)) {
   free(s, M_DEVBUF);
   return;
  }
  *s->stats = *stats;
 }
 STAILQ_INSERT_TAIL(list, s, link);
}
