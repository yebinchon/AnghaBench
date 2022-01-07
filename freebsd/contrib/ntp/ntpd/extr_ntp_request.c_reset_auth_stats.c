
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auth_timereset ;
 scalar_t__ authdecryptions ;
 scalar_t__ authencryptions ;
 scalar_t__ authkeylookups ;
 scalar_t__ authkeynotfound ;
 scalar_t__ authkeyuncached ;
 int current_time ;

void
reset_auth_stats(void)
{
 authkeylookups = 0;
 authkeynotfound = 0;
 authencryptions = 0;
 authdecryptions = 0;
 authkeyuncached = 0;
 auth_timereset = current_time;
}
