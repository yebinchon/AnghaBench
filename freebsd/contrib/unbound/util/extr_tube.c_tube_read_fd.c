
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tube {int sr; } ;



int tube_read_fd(struct tube* tube)
{
 return tube->sr;
}
