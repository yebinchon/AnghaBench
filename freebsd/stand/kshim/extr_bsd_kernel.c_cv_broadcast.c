
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cv {scalar_t__ sleeping; } ;



void
cv_broadcast(struct cv *cv)
{
 cv->sleeping = 0;
}
