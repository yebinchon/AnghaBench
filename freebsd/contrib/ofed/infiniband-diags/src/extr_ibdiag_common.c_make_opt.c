
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {size_t val; int * flag; int has_arg; int name; } ;
struct ibdiag_opt {size_t letter; int has_arg; int name; } ;



__attribute__((used)) static void make_opt(struct option *l, const struct ibdiag_opt *o,
       const struct ibdiag_opt *map[])
{
 l->name = o->name;
 l->has_arg = o->has_arg;
 l->flag = ((void*)0);
 l->val = o->letter;
 if (!map[l->val])
  map[l->val] = o;
}
