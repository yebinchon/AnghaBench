
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TValue ;


 int MAXASIZE ;
 int arrayindex (int const*) ;
 size_t luaO_ceillog2 (int) ;

__attribute__((used)) static int countint (const TValue *key, int *nums) {
  int k = arrayindex(key);
  if (0 < k && k <= MAXASIZE) {
    nums[luaO_ceillog2(k)]++;
    return 1;
  }
  else
    return 0;
}
