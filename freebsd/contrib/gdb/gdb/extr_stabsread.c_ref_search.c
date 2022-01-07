
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct TYPE_2__ {struct symbol* sym; } ;


 int ref_count ;
 TYPE_1__* ref_map ;

struct symbol *
ref_search (int refnum)
{
  if (refnum < 0 || refnum > ref_count)
    return 0;
  return ref_map[refnum].sym;
}
