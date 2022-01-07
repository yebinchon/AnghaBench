
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct iter_hints_stub {struct delegpt* dp; } ;
struct iter_hints {int tree; } ;
struct delegpt {int dummy; } ;


 scalar_t__ name_tree_find (int *,int *,int,int,int ) ;

struct delegpt*
hints_lookup_root(struct iter_hints* hints, uint16_t qclass)
{
 uint8_t rootlab = 0;
 struct iter_hints_stub *stub;
 stub = (struct iter_hints_stub*)name_tree_find(&hints->tree,
  &rootlab, 1, 1, qclass);
 if(!stub)
  return ((void*)0);
 return stub->dp;
}
