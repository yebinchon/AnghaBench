
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct uni_msg {int b_rptr; } ;


 int bcopy (int,int *,int) ;
 int ntohl (int ) ;

u_int
uni_msg_get32(struct uni_msg *msg)
{
 uint32_t w;

 bcopy(msg->b_rptr, &w, 4);
 msg->b_rptr += 4;
 return (ntohl(w));
}
