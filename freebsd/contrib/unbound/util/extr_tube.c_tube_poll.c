
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tube {int sr; } ;
struct timeval {int dummy; } ;


 int memset (struct timeval*,int ,int) ;
 int pollit (int ,struct timeval*) ;

int tube_poll(struct tube* tube)
{
 struct timeval t;
 memset(&t, 0, sizeof(t));
 return pollit(tube->sr, &t);
}
