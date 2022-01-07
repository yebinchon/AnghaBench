
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int state; } ;


 int rs_connected ;
 scalar_t__ rs_ctrl_avail (struct rsocket*) ;

__attribute__((used)) static int rs_conn_can_send_ctrl(struct rsocket *rs)
{
 return rs_ctrl_avail(rs) || !(rs->state & rs_connected);
}
