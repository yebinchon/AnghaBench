
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;


 int dtrace_add_128 (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int dtrace_multiply_128 (scalar_t__,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void
dtrace_aggregate_stddev(uint64_t *data, uint64_t nval, uint64_t arg)
{
 int64_t snval = (int64_t)nval;
 uint64_t tmp[2];

 data[0]++;
 data[1] += nval;
 if (snval < 0)
  snval = -snval;

 dtrace_multiply_128((uint64_t)snval, (uint64_t)snval, tmp);
 dtrace_add_128(data + 2, tmp, data + 2);
}
