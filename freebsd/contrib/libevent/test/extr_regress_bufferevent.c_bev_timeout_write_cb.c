
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout_cb_result {int last_wrote_at; } ;
struct bufferevent {int dummy; } ;


 int evutil_gettimeofday (int *,int *) ;

__attribute__((used)) static void
bev_timeout_write_cb(struct bufferevent *bev, void *arg)
{
 struct timeout_cb_result *res = arg;
 evutil_gettimeofday(&res->last_wrote_at, ((void*)0));
}
