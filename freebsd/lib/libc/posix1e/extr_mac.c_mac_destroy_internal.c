
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ internal_initialized ;
 int mac_destroy_labels () ;

__attribute__((used)) static void
mac_destroy_internal(void)
{

 mac_destroy_labels();

 internal_initialized = 0;
}
