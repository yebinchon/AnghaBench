
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creation_set {int dummy; } ;


 int _cset_add_filter (struct creation_set*,int ,char const*) ;

void
cset_add_filter(struct creation_set *cset, const char *filter)
{
 _cset_add_filter(cset, 0, filter);
}
