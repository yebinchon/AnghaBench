
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dl_list_init (int *) ;
 int fst_global_ctrls_list ;
 int fst_global_groups_list ;
 int fst_global_initialized ;
 int fst_session_global_init () ;

int fst_global_init(void)
{
 dl_list_init(&fst_global_groups_list);
 dl_list_init(&fst_global_ctrls_list);
 fst_session_global_init();
 fst_global_initialized = 1;
 return 0;
}
