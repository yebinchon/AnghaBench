
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int MAXKEYS ;
 scalar_t__ arc4random () ;
 int assert (int) ;
 int cmp_keys ;
 scalar_t__* keys ;
 int qsort (scalar_t__*,size_t,int,int ) ;

__attribute__((used)) static void
init_keys(size_t len)
{
 uint32_t sorted_keys[MAXKEYS];
 size_t i;

 assert(len <= MAXKEYS);

 if (len == 0)
  return;

 do {
  for (i = 0; i < len; ++i)
   sorted_keys[i] = keys[i] = arc4random();

  qsort(sorted_keys, len, sizeof(*sorted_keys), cmp_keys);
  for (i = 1; i < len; ++i) {
   if (sorted_keys[i - 1] == sorted_keys[i])
    break;
  }
 } while (i != len);
}
