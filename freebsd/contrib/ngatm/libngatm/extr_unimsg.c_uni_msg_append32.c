
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uni_msg {int b_wptr; } ;


 int bcopy (int *,int,int) ;
 int htonl (int ) ;
 int uni_msg_ensure (struct uni_msg*,int) ;

int
uni_msg_append32(struct uni_msg *msg, u_int u)
{
 if (uni_msg_ensure(msg, 4) == -1)
  return (-1);
 u = htonl(u);
 bcopy(&u, msg->b_wptr, 4);
 msg->b_wptr += 4;
 return (0);
}
