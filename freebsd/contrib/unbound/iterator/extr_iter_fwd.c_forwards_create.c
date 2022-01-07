
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_forwards {int dummy; } ;


 scalar_t__ calloc (int,int) ;

struct iter_forwards*
forwards_create(void)
{
 struct iter_forwards* fwd = (struct iter_forwards*)calloc(1,
  sizeof(struct iter_forwards));
 if(!fwd)
  return ((void*)0);
 return fwd;
}
