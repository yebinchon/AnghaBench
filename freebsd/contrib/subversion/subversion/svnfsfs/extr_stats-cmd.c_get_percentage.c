
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double apr_uint64_t ;



__attribute__((used)) static int
get_percentage(apr_uint64_t part,
               apr_uint64_t total)
{

  if (part >= total)
    return 100;


  return (int)(part * 100.0 / total);
}
