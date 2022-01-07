
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint32_t ;



__attribute__((used)) static apr_uint32_t hash_func(apr_uint32_t sum)
{



  return sum ^ (sum >> 12);
}
