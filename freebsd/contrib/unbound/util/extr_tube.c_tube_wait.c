
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tube {int sr; } ;


 int pollit (int ,int *) ;

int tube_wait(struct tube* tube)
{
 return pollit(tube->sr, ((void*)0));
}
