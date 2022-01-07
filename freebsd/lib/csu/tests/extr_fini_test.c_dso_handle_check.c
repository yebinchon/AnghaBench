
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int ,char*) ;
 void* __dso_handle ;

void
dso_handle_check(void)
{
 void *dso = __dso_handle;





 ATF_REQUIRE_MSG(dso == ((void*)0),
     "Invalid __dso_handle in non-DSO");

}
