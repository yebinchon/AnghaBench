
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int state; } ;


 scalar_t__ rs_can_send (struct rsocket*) ;
 int rs_writable ;

__attribute__((used)) static int rs_conn_can_send(struct rsocket *rs)
{
 return rs_can_send(rs) || !(rs->state & rs_writable);
}
