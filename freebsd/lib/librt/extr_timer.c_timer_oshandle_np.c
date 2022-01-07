
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* timer_t ;
struct TYPE_3__ {int oshandle; } ;



int
timer_oshandle_np(timer_t timerid)
{

 return (timerid->oshandle);
}
