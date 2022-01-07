
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;


 struct group* gr_add (struct group const*,int *) ;

struct group *
gr_dup(const struct group *gr)
{
 return (gr_add(gr, ((void*)0)));
}
