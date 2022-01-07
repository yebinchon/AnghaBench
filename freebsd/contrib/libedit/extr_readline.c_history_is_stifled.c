
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INT_MAX ;
 scalar_t__ max_input_history ;

int
history_is_stifled(void)
{


 return max_input_history != INT_MAX;
}
