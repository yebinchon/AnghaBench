
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout_cb_result {int n_write_timeouts; int write_timeout_at; int n_read_timeouts; int read_timeout_at; int total_calls; } ;
struct bufferevent {int dummy; } ;


 short BEV_EVENT_READING ;
 short BEV_EVENT_TIMEOUT ;
 short BEV_EVENT_WRITING ;
 int evutil_gettimeofday (int *,int *) ;

__attribute__((used)) static void
bev_timeout_event_cb(struct bufferevent *bev, short what, void *arg)
{
 struct timeout_cb_result *res = arg;
 ++res->total_calls;

 if ((what & (BEV_EVENT_READING|BEV_EVENT_TIMEOUT))
     == (BEV_EVENT_READING|BEV_EVENT_TIMEOUT)) {
  evutil_gettimeofday(&res->read_timeout_at, ((void*)0));
  ++res->n_read_timeouts;
 }
 if ((what & (BEV_EVENT_WRITING|BEV_EVENT_TIMEOUT))
     == (BEV_EVENT_WRITING|BEV_EVENT_TIMEOUT)) {
  evutil_gettimeofday(&res->write_timeout_at, ((void*)0));
  ++res->n_write_timeouts;
 }
}
