
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_ASSERT (int ) ;
 int dl_list_empty (int *) ;
 int global_sessions_list ;

void fst_session_global_deinit(void)
{
 WPA_ASSERT(dl_list_empty(&global_sessions_list));
}
