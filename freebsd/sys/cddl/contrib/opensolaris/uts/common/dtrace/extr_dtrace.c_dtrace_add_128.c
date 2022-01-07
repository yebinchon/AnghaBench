
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static void
dtrace_add_128(uint64_t *addend1, uint64_t *addend2, uint64_t *sum)
{
 uint64_t result[2];

 result[0] = addend1[0] + addend2[0];
 result[1] = addend1[1] + addend2[1] +
     (result[0] < addend1[0] || result[0] < addend2[0] ? 1 : 0);

 sum[0] = result[0];
 sum[1] = result[1];
}
