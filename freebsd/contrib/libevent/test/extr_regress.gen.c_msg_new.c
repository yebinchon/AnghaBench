
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;


 struct msg* msg_new_with_arg (int *) ;

struct msg *
msg_new(void)
{
  return msg_new_with_arg(((void*)0));
}
