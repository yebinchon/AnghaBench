
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int internal_initialized ;
 int mac_init_internal (int) ;

__attribute__((used)) static int
mac_maybe_init_internal(void)
{

 if (!internal_initialized)
  return (mac_init_internal(1));
 else
  return (0);
}
