
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ V_DEBUG ;
 scalar_t__ verbosity ;

extern void
message_verbosity_increase(void)
{
 if (verbosity < V_DEBUG)
  ++verbosity;

 return;
}
