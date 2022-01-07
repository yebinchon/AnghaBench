
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printc {int dummy; } ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int be ;
 scalar_t__ be_get_dataset_snapshots (int ,char const*,int *) ;
 scalar_t__ be_prop_list_alloc (int **) ;
 int fprintf (int ,char*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int nvpair_value_nvlist (int *,int **) ;
 int print_info (int ,int *,struct printc*) ;
 int stderr ;

__attribute__((used)) static int
print_snapshots(const char *dsname, struct printc *pc)
{
 nvpair_t *cur;
 nvlist_t *props, *sprops;

 if (be_prop_list_alloc(&props) != 0) {
  fprintf(stderr, "bectl list: failed to allocate snapshot nvlist\n");
  return (1);
 }
 if (be_get_dataset_snapshots(be, dsname, props) != 0) {
  fprintf(stderr, "bectl list: failed to fetch boot ds snapshots\n");
  return (1);
 }
 for (cur = nvlist_next_nvpair(props, ((void*)0)); cur != ((void*)0);
     cur = nvlist_next_nvpair(props, cur)) {
  nvpair_value_nvlist(cur, &sprops);
  print_info(nvpair_name(cur), sprops, pc);
 }
 return (0);
}
