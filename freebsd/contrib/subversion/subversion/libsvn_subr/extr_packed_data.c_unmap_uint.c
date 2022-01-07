
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;


 int APR_UINT64_MAX ;

__attribute__((used)) static apr_uint64_t
unmap_uint(apr_uint64_t value)
{
  return value & 1
       ? (APR_UINT64_MAX - value / 2)
       : value / 2;
}
