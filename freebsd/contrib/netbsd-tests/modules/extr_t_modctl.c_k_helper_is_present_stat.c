
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_modstat_info (char*,int *) ;

__attribute__((used)) static bool
k_helper_is_present_stat(void)
{

 return get_modstat_info("k_helper", ((void*)0));
}
