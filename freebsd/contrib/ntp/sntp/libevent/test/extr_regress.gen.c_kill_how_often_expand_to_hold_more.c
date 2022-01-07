
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int how_often_num_allocated; int * how_often_data; } ;
typedef int ev_uint32_t ;


 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static int
kill_how_often_expand_to_hold_more(struct kill *msg)
{
  int tobe_allocated = msg->how_often_num_allocated;
  ev_uint32_t* new_data = ((void*)0);
  tobe_allocated = !tobe_allocated ? 1 : tobe_allocated << 1;
  new_data = (ev_uint32_t*) realloc(msg->how_often_data,
      tobe_allocated * sizeof(ev_uint32_t));
  if (new_data == ((void*)0))
    return -1;
  msg->how_often_data = new_data;
  msg->how_often_num_allocated = tobe_allocated;
  return 0;}
