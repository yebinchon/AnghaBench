
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bufferevent_ctrl_data {int ptr; } ;
struct bufferevent_filtered {int underlying; } ;
struct bufferevent {int dummy; } ;
typedef enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;






 struct bufferevent_filtered* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_filter_ctrl(struct bufferevent *bev, enum bufferevent_ctrl_op op,
    union bufferevent_ctrl_data *data)
{
 struct bufferevent_filtered *bevf;
 switch (op) {
 case 129:
  bevf = upcast(bev);
  data->ptr = bevf->underlying;
  return 0;
 case 130:
 case 128:
 case 131:
 default:
  return -1;
 }
}
