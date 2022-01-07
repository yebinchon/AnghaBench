
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;
typedef scalar_t__ ev_ssize_t ;


 scalar_t__ bufferevent_rate_limit_group_get_read_limit (scalar_t__) ;
 scalar_t__ bufferevent_rate_limit_group_get_write_limit (scalar_t__) ;
 scalar_t__ ratelim_group ;
 int total_group_rbucket_level ;
 int total_group_wbucket_level ;
 int total_n_group_bev_checks ;

__attribute__((used)) static void
check_group_bucket_levels_cb(evutil_socket_t fd, short events, void *arg)
{
 if (ratelim_group) {
  ev_ssize_t r = bufferevent_rate_limit_group_get_read_limit(ratelim_group);
  ev_ssize_t w = bufferevent_rate_limit_group_get_write_limit(ratelim_group);
  total_group_rbucket_level += r;
  total_group_wbucket_level += w;
 }
 ++total_n_group_bev_checks;
}
