
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int bufferevent_remove_from_rate_limit_group_internal_ (struct bufferevent*,int) ;

int
bufferevent_remove_from_rate_limit_group(struct bufferevent *bev)
{
 return bufferevent_remove_from_rate_limit_group_internal_(bev, 1);
}
