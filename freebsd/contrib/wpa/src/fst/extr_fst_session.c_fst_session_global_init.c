
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dl_list_init (int *) ;
 int global_sessions_list ;

int fst_session_global_init(void)
{
 dl_list_init(&global_sessions_list);
 return 0;
}
