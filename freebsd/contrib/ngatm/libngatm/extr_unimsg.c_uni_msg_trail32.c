
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uni_msg {scalar_t__ b_wptr; } ;


 int bcopy (scalar_t__,int *,int) ;
 int ntohl (int ) ;

u_int
uni_msg_trail32(const struct uni_msg *msg, int i)
{
 u_int w;

 bcopy(msg->b_wptr + 4 * i, &w, 4);
 return (ntohl(w));
}
