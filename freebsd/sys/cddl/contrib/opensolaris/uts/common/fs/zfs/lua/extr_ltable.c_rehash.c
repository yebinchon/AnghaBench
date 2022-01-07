
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Table ;
typedef int TValue ;


 int MAXBITS ;
 int computesizes (int*,int*) ;
 scalar_t__ countint (int const*,int*) ;
 int luaH_resize (int *,int *,int,int) ;
 int numusearray (int *,int*) ;
 scalar_t__ numusehash (int *,int*,int*) ;

__attribute__((used)) static void rehash (lua_State *L, Table *t, const TValue *ek) {
  int nasize, na;
  int nums[MAXBITS+1];
  int i;
  int totaluse;
  for (i=0; i<=MAXBITS; i++) nums[i] = 0;
  nasize = numusearray(t, nums);
  totaluse = nasize;
  totaluse += numusehash(t, nums, &nasize);

  nasize += countint(ek, nums);
  totaluse++;

  na = computesizes(nums, &nasize);

  luaH_resize(L, t, nasize, totaluse - na);
}
