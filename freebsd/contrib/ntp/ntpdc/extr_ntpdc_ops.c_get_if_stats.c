
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
struct info_if_stats {int dummy; } ;
typedef int FILE ;


 int REQ_IF_STATS ;
 int doquery (int ,int ,int,int ,int ,char*,size_t*,size_t*,void*,int ,int) ;
 int iflist (int *,struct info_if_stats*,size_t,size_t,int) ;
 int impl_ver ;

__attribute__((used)) static void
get_if_stats(
 struct parse *pcmd,
 FILE *fp
 )
{
 struct info_if_stats *ifs;
 size_t items;
 size_t itemsize;
 int res;

 res = doquery(impl_ver, REQ_IF_STATS, 1, 0, 0, (char *)((void*)0), &items,
        &itemsize, (void *)&ifs, 0,
        sizeof(struct info_if_stats));
 iflist(fp, ifs, items, itemsize, res);
}
