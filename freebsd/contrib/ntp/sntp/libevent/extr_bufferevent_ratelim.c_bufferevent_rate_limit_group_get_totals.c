
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_rate_limit_group {int total_written; int total_read; } ;
typedef int ev_uint64_t ;


 int EVUTIL_ASSERT (int ) ;

void
bufferevent_rate_limit_group_get_totals(struct bufferevent_rate_limit_group *grp,
    ev_uint64_t *total_read_out, ev_uint64_t *total_written_out)
{
 EVUTIL_ASSERT(grp != ((void*)0));
 if (total_read_out)
  *total_read_out = grp->total_read;
 if (total_written_out)
  *total_written_out = grp->total_written;
}
