
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 void* MAP_FAILED ;
 scalar_t__ munmap (void*,int ) ;
 int page ;

__attribute__((used)) static void
map_check(void *map, int flag)
{

 if (flag != 0) {
  ATF_REQUIRE(map == MAP_FAILED);
  return;
 }

 ATF_REQUIRE(map != MAP_FAILED);
 ATF_REQUIRE(munmap(map, page) == 0);
}
