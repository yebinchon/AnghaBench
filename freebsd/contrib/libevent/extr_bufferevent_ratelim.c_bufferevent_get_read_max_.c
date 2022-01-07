
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int dummy; } ;
typedef int ev_ssize_t ;


 int bufferevent_get_rlim_max_ (struct bufferevent_private*,int ) ;

ev_ssize_t
bufferevent_get_read_max_(struct bufferevent_private *bev)
{
 return bufferevent_get_rlim_max_(bev, 0);
}
