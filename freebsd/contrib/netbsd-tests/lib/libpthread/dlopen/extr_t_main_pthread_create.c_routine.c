
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;

void *
routine(void *arg)
{
 ATF_REQUIRE((intptr_t)arg == 0xcafe);
 return ((void*)0);
}
