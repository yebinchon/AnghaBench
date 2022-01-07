
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int active_mode () ;
 int passive_mode () ;
 scalar_t__ passivemode ;

int
initconn (void)
{
    if (passivemode)
 return passive_mode ();
    else
 return active_mode ();
}
