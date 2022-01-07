
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_channel_t ;


 int cap_set_end_pwent (int *,char*) ;

void
cap_setpwent(cap_channel_t *chan)
{

 cap_set_end_pwent(chan, "setpwent");
}
