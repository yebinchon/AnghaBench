
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blacklist_open () ;
 int blstate ;
 scalar_t__ use_blacklist ;

void
blacklist_init(void)
{

 if (use_blacklist)
  blstate = blacklist_open();
}
