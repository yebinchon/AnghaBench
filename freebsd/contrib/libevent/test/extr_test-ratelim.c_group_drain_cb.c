
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int bufferevent_rate_limit_group_decrement_read (int ,int ) ;
 int bufferevent_rate_limit_group_decrement_write (int ,int ) ;
 int cfg_group_drain ;
 int ratelim_group ;

__attribute__((used)) static void
group_drain_cb(evutil_socket_t fd, short events, void *arg)
{
 bufferevent_rate_limit_group_decrement_read(ratelim_group, cfg_group_drain);
 bufferevent_rate_limit_group_decrement_write(ratelim_group, cfg_group_drain);
}
