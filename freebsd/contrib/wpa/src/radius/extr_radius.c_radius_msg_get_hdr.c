
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_msg {struct radius_hdr* hdr; } ;
struct radius_hdr {int dummy; } ;



struct radius_hdr * radius_msg_get_hdr(struct radius_msg *msg)
{
 return msg->hdr;
}
