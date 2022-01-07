
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bufferevent_ctrl_data {int fd; } ;
struct bufferevent {int ev_read; } ;
typedef enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;






 int be_socket_setfd (struct bufferevent*,int ) ;
 int event_get_fd (int *) ;

__attribute__((used)) static int
be_socket_ctrl(struct bufferevent *bev, enum bufferevent_ctrl_op op,
    union bufferevent_ctrl_data *data)
{
 switch (op) {
 case 128:
  be_socket_setfd(bev, data->fd);
  return 0;
 case 130:
  data->fd = event_get_fd(&bev->ev_read);
  return 0;
 case 129:
 case 131:
 default:
  return -1;
 }
}
