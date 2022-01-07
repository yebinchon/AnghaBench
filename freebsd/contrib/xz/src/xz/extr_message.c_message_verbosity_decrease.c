
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ V_SILENT ;
 scalar_t__ verbosity ;

extern void
message_verbosity_decrease(void)
{
 if (verbosity > V_SILENT)
  --verbosity;

 return;
}
