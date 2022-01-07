
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union bufferevent_ctrl_data {int dummy; } bufferevent_ctrl_data ;
struct bufferevent {TYPE_1__* be_ops; } ;
typedef int d ;
struct TYPE_2__ {int (* ctrl ) (struct bufferevent*,int ,union bufferevent_ctrl_data*) ;} ;


 int BEV_CTRL_CANCEL_ALL ;
 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 int memset (union bufferevent_ctrl_data*,int ,int) ;
 int stub1 (struct bufferevent*,int ,union bufferevent_ctrl_data*) ;

__attribute__((used)) static void
bufferevent_cancel_all_(struct bufferevent *bev)
{
 union bufferevent_ctrl_data d;
 memset(&d, 0, sizeof(d));
 BEV_LOCK(bev);
 if (bev->be_ops->ctrl)
  bev->be_ops->ctrl(bev, BEV_CTRL_CANCEL_ALL, &d);
 BEV_UNLOCK(bev);
}
