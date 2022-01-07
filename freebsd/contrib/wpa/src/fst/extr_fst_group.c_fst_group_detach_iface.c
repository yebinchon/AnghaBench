
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_iface {int group_lentry; } ;
struct fst_group {int dummy; } ;


 int dl_list_del (int *) ;

void fst_group_detach_iface(struct fst_group *g, struct fst_iface *i)
{
 dl_list_del(&i->group_lentry);
}
