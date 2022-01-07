
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int history_length ;
 int history_offset ;

int
history_set_pos(int pos)
{
 if (pos >= history_length || pos < 0)
  return 0;

 history_offset = pos;
 return 1;
}
