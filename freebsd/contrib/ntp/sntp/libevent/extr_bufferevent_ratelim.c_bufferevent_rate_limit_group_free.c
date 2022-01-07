
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_rate_limit_group {scalar_t__ n_members; int lock; int master_refill_event; } ;


 int EVTHREAD_FREE_LOCK (int ,int ) ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int EVUTIL_ASSERT (int) ;
 int LOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int UNLOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int event_del (int *) ;
 int mm_free (struct bufferevent_rate_limit_group*) ;

void
bufferevent_rate_limit_group_free(struct bufferevent_rate_limit_group *g)
{
 LOCK_GROUP(g);
 EVUTIL_ASSERT(0 == g->n_members);
 event_del(&g->master_refill_event);
 UNLOCK_GROUP(g);
 EVTHREAD_FREE_LOCK(g->lock, EVTHREAD_LOCKTYPE_RECURSIVE);
 mm_free(g);
}
