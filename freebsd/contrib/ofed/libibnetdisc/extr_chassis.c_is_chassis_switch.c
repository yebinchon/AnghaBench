
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ibnd_node_t ;


 scalar_t__ is_line (int *) ;
 scalar_t__ is_spine (int *) ;

int is_chassis_switch(ibnd_node_t * n)
{
 return (is_spine(n) || is_line(n));
}
