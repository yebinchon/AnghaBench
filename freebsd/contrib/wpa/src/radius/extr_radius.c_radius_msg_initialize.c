
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_msg {scalar_t__ attr_used; int attr_size; int * attr_pos; } ;


 int RADIUS_DEFAULT_ATTR_COUNT ;
 int * os_calloc (int ,int) ;

__attribute__((used)) static int radius_msg_initialize(struct radius_msg *msg)
{
 msg->attr_pos = os_calloc(RADIUS_DEFAULT_ATTR_COUNT,
      sizeof(*msg->attr_pos));
 if (msg->attr_pos == ((void*)0))
  return -1;

 msg->attr_size = RADIUS_DEFAULT_ATTR_COUNT;
 msg->attr_used = 0;

 return 0;
}
