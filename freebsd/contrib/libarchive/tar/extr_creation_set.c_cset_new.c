
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creation_set {int dummy; } ;


 struct creation_set* calloc (int,int) ;

struct creation_set *
cset_new(void)
{
 return calloc(1, sizeof(struct creation_set));
}
