
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int MAP_ANON ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int memset (void*,int,int ) ;
 int minherit (void*,int ,int) ;
 void* mmap (int *,int ,int,int,int,int ) ;
 int page ;

__attribute__((used)) static void *
makemap(int v, int f) {
 void *map = mmap(((void*)0), page, PROT_READ|PROT_WRITE,
     MAP_SHARED|MAP_ANON, -1, 0);
 ATF_REQUIRE(map != MAP_FAILED);
 memset(map, v, page);
 if (f != 666)
  ATF_REQUIRE(minherit(map, page, f) == 0);
 else
  ATF_REQUIRE(minherit(map, page, f) == -1);
 return map;
}
