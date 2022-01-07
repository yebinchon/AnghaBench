
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint32_t ;


 int FLAGS_COUNT ;

__attribute__((used)) static apr_uint32_t hash_flags(apr_uint32_t sum)
{



  return (sum >> 16) & ((FLAGS_COUNT / 8) - 1);
}
