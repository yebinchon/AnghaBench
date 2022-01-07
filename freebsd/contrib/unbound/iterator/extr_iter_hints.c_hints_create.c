
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_hints {int dummy; } ;


 scalar_t__ calloc (int,int) ;

struct iter_hints*
hints_create(void)
{
 struct iter_hints* hints = (struct iter_hints*)calloc(1,
  sizeof(struct iter_hints));
 if(!hints)
  return ((void*)0);
 return hints;
}
