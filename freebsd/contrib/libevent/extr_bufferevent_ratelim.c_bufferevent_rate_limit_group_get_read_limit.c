
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_limit; } ;
struct bufferevent_rate_limit_group {TYPE_1__ rate_limit; } ;
typedef int ev_ssize_t ;


 int LOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int UNLOCK_GROUP (struct bufferevent_rate_limit_group*) ;

ev_ssize_t
bufferevent_rate_limit_group_get_read_limit(
 struct bufferevent_rate_limit_group *grp)
{
 ev_ssize_t r;
 LOCK_GROUP(grp);
 r = grp->rate_limit.read_limit;
 UNLOCK_GROUP(grp);
 return r;
}
